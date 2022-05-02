$(() => {
    console.log("start !!!");

    // logIn button event
    $(".submit").on('click', () => {
        console.log("==// logInBtn");

        let userId = $("#userId").val();
        let password = $("#password").val();

        let params = {
            userId  : userId,
            password: password
        }
        console.log(params);

        // common.commonAjax()

    });


});

let main = {
    fn_returnHomeBtn: () => {
        $("#userId").val("");
        $("#password").val("");
    }

}


