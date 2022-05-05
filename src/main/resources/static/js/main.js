$(() => {
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

    logInUserInfo : {}

    , fn_returnHomeBtn: () => {
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

    ,fn_setLogInInfo: (userData, logInData) => {

        console.log("==// fn_setLogInInfo");
        // console.log(userData);
        console.log(logInData.length);

        // let sysCdList = logInData[0].systemCd.split(",");
        // let sysNmList = logInData[0].systemName.split(",");
        // let sysGrpCdList = logInData[0].systemGrpCd.split(",");
        // let sysGrpNmList = logInData[0].systemGrpName.split(",");

        let userDataResult = {
            id : userData.id,
            userNm : userData.userName,
            phoneNo : userData.phoneNo,
            email : userData.email,
            roleCd: logInData[0].roleCd,
            roleName: logInData[0].roleName,
        }
        console.log(userDataResult);


        let logInDataResult = {

        }



        // main.logInUserInfo

    }

    ,fn_logInPrecess: () => {

        main.logInUserInfo = {};

        // getUserId
        let userInfo = main.fn_getUserId();
        let userInfoValid = main.fn_dataValidation("id", userInfo);
        if (userInfoValid) {
            // login
            let logInInfo = main.fn_getLogIn();
            let logInInfoValid = main.fn_dataValidation("logIn", logInInfo);

            if (logInInfoValid) {
                main.fn_setLogInInfo(userInfo, logInInfo);
            }
        }
    }

}

