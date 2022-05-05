$(() => {
    console.log("start !!!");


    // enterKey event
    $("#userId").on('keydown', (key) => {
        if (key.keyCode === 13) {
            alert("비밀번호를 입력해 주세요.");
            $("#password").focus();
        }
    });

    $("#password").on('keydown', (key) => {
        if (key.keyCode === 13) main.fn_logInPrecess();
    });

    // logIn button event
    $(".submitLogIn").on('click', () => {
        main.fn_logInPrecess();
    });
});

let main = {
    fn_returnHomeBtn: () => {
        $("#userId").val("");
        $("#password").val("");
    }

    , fn_dataValidation: (type, data) => {

        let result = true;
        switch (type) {
            case "id":
                if (typeof data === 'undefined') {
                    $("#right-text-01").show();
                    alert("해당 아이디는 찾을 수 없습니다.");
                    result = false;
                } else {
                    $("#right-text-01").hide();
                }
                break;
            case "logIn":
                if (data.length > 0) {
                    $("#right-text-01").hide();
                } else {
                    $("#right-text-01").show();
                    alert("비밀번호가 일치하지 않습니다.");
                    $("#password").val("");
                    $("#password").focus();
                    result = false;
                }
                break;
        }
        return result;
    }

    , fn_getUserId: () => {
        let url = "/user/id/" + $("#userId").val();
        let result;
        let callback = (data) => {
            result = data;
        }
        common.commonAjax(url, false, {}, "json", callback, "GET");
        return result;
    }

    , fn_getLogIn: () => {
        let url = "/user/login";
        let result;
        let params = {
            id      : $("#userId").val(),
            password: $("#password").val()
        }
        let callback = (data) => {
            result = data;
        }
        common.commonAjax(url, false, params, "json", callback, "POST");
        return result;
    }

    ,fn_setLogInInfo: (data) => {

    }

    ,fn_logInPrecess: () => {
        // getUserId
        let userInfo = main.fn_getUserId();
        let userInfoValid = main.fn_dataValidation("id", userInfo);
        if (userInfoValid) {

            // login
            let logInInfo = main.fn_getLogIn();
            let logInInfoValid = main.fn_dataValidation("logIn", logInInfo);

            if (logInInfoValid) {
                console.log("==// login 성공!!!");
                console.log(logInInfo);
                main.fn_setLogInInfo(logInInfo);
            }
        }
    }

}

