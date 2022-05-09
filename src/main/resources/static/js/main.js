$(() => {
    $("#right-text-02").hide();

    // enterKey event
    $("#userId").on('keydown', (key) => {
        if (key.keyCode === 13) {
            alert("비밀번호를 입력해 주세요.");
            $("#password").focus();
        }
    });

    $("#password").on('keydown', (key) => {
        if (key.keyCode === 13) main.fn_logInProcess();
    });

    // logIn button event
    $(".submitLogIn").on('click', () => {
        main.fn_logInProcess();
    });

    $("#button").on("click", function () {
        main.fn_displayAuthInfo();
    });

});

let main = {

    logInUserInfo: {}

    , fn_reset: () => {

        // id, password init
        $("#userId").val("");
        $("#password").val("");

        $("#userId").attr("disabled", false);
        $("#userId").css("background", "transparent");
        $("#password").attr("disabled", false);
        $("#password").css("background", "transparent");

        $("#logIn h3").text("LOG IN");

        $("#effect").css("display", "none");

        // UI init
        $("#right-text-01").show();
        $("#right-text-02").hide();
    }

    , fn_dataValidation: (type, data) => {

        let result = true;
        switch (type) {
            case "id":
                if (typeof data === 'undefined') {
                    alert("해당 아이디는 찾을 수 없습니다.");
                    $("#password").val("");
                    $("#userId").focus();
                    result = false;
                }
                break;
            case "logIn":
                if (data.length > 0) {
                    $("#right-text-01").hide();
                    $("#right-text-02").show();

                    $("#userId").attr("disabled", true);
                    $("#userId").css("background", "#b7b7b7");
                    $("#password").attr("disabled", true);
                    $("#password").css("background", "#b7b7b7");


                    $("#logIn h3").text("SUCCESS!");


                } else {
                    $("#right-text-01").show();
                    $("#right-text-02").hide();
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

    , fn_setLogInInfo: (userData, logInData) => {

        let userDataResult = {
            id      : userData.id,
            userNm  : userData.userName,
            phoneNo : userData.phoneNo,
            email   : userData.email,
            roleCd  : logInData[0].roleCd,
            roleName: logInData[0].roleName,
        }

        // toggle box UI setting
        let toggleContext;
        for (let i = 0; i < logInData.length; i++) {
            toggleContext += "<tr><td>";
            toggleContext += logInData[i].systemGrpName;
            toggleContext += "</td><td>";
            toggleContext += logInData[i].systemName;
            toggleContext += "</td></tr>";
        }
        $("#toggle-context").html(toggleContext);

        // UI setting
        $("#users-contain h1").text(userDataResult.roleName);
        $("#user_name").text(userDataResult.userNm);
        $("#email").text(userDataResult.email);
        $("#phone_no").text(userDataResult.phoneNo);


    }

    , fn_logInProcess: () => {

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

    , fn_displayAuthInfo: () => {
        // let selectedEffect = $("#effectTypes").val();
        let selectedEffect = "blind";

        // Most effect types need no options passed by default
        let options = {};
        // some effects have required parameters
        if (selectedEffect === "scale") {
            options = {percent: 50};
        } else if (selectedEffect === "size") {
            options = {to: {width: 200, height: 60}};
        }

        // Run the effect
        $("#effect").toggle(selectedEffect, options, 500);
    }

}

