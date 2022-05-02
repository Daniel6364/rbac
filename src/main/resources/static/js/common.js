let common = {

    commonAjax: function (url, async, data, dataType, callback, methodType) {

        const options = {
            url          : url
            , async      : async
            , method     : methodType
            , contentType: "application/json" // 요청 컨텐트 타입
            , beforeSend : function (xmlHttpRequest) {
                xmlHttpRequest.setRequestHeader("AJAX", "true"); // 세션체크를 위해 ajax 호출을 header에 기록
            }
        }

        // 느낌표 두개 연산자는 null이나 undefined 값을 false로 변환
        if ('GET' === methodType && !!data) {
            url = url + '?';
            for (let key in data) {
                url += key + '=' + encodeURIComponent(data[key]) + '&';
            }
            options.url = url;
        } else if ('POST' === methodType && !!data) {
            options.data = JSON.stringify(data);
        }

        if (!!dataType) {
            options.dataType = dataType;
        }

        var request = $.ajax(
            options
        );

        //콜백함수
        request.done(callback);

        request.fail(function (xhr, jqXHR, textStatus) {
            if (xhr.status === 401) {
                alert("인증에 실패 했습니다. 로그인 페이지로 이동합니다.");
                location.href = "/";
            } else if (xhr.status === 403) {
                alert("세션이 만료가 되었습니다. 로그인 페이지로 이동합니다.");
                location.href = "/";
            } else {
                alert("권한이 없거나 실행중 오류가 발생하였습니다.");
            }
        });
    },

}