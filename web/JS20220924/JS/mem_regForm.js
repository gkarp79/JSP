$().ready(function () {
    var passChk = false;
    var chkValue = new Array();
    const keyName = ["temail", "tname", "tpwd", "tpwd2", "thobby", "taddr"];

    $("#btnReg").on("click", function (ev) {

        $("input[type=checkbox][name=thobby]").each(function (index) {
            if ($(this).is(":checked")) {
                chkValue.push($(this).val());
            }
        });
        if (fn.temail.value == "") {
            alert("비밀번호는 반드시 입력해야 합니다.");
            fn.temail.focus();
            return;
        }
        if (fn.tname.value == "") {
            alert("이름은 반드시 입력해야 합니다.");
            fn.tname.focus();
            return;
        }
        if (fn.tpwd.value == "") {
            alert("비밀번호는 반드시 입력해야 합니다.");
            fn.tpwd.focus();
            return;
        }
        if (fn.tpwd2.value == "") {
            alert("확인을 위한 비밀번호도 반드시 입력해야 합니다.");
            fn.tpwd2.focus();
            return;
        }
        if ($("input:checked").length == 0) {
            alert("취미는 하나 이상을 선택하셔야 합니다.");
            return;
        }
        if (fn.taddr.value == "") {
            alert("거주지를 선택해 주세요.");
            return;
        }
        fn.action = "/JDBC";
        fn.method = "get";
        fn.submit();

    });//e:$("form").on("submit")

    $("#pwd2").on("keypress", function () {
        passChk = false;
        if (fn.tpwd.value == fn.tpwd2.value) passChk = true;
        console.log(passChk);
    });//e:$("#pwd2").on("keypress")





    $("#btnmember").on("click", function (ev) {


        $.ajax({
            //========================요청=======================
            url: "/Select",
            method: "POST",
            contentType: "application/json; charset=UTF-8",
            //============================응답===================================
            dataType: "json",/*json / text / html / xml / csv */
            // success: function (obj) {
            //     console.log(obj)
            //     // $('<div></div>').html(obj).appendTo($('#resultArea'));
            //     $.each(obj, function (k, v) {
            //         // var $div = $('<div></div>')
            //         var $tr = $('<tr></tr>');
            //         if (k==0){
            //         $.each(v, function (key, value) {
            //                 $('<th></th>').html(`${key}`).appendTo($('#thead'));
            //                 // return false;
            //         });
            //         }
            //         $.each(v, function (key, value) {
            //             ($('<td></td>').html(`${value}`)).appendTo($tr);
            //         });
            //         $tr.appendTo($('#listArea'))
            success: function (data) {
                var field = ["fname", "femail", "fhobby", "faddr", "fdate"];
                console.log(data);
                for (var i = 0; i < data.length; i++) {
                    var $tr = $("<tr></tr>");
                    $tr.attr("id", "tr" + data[i].fidx);
                    for (var j = 0; j < field.length; j++) {
                        var key = field[j];
                        var $td = $("<td></td>");
                        $td.text(data[i][key]);
                        $tr.append($td);
                    }
                    $("#select").append($tr);

                }
                $("#delete").on("click", function () {
                    var email;
                    var value;
                    var passwd;
                    if (fn.temail.value != "") email = fn.temail.value;
                    else{
                        alert("이메일와 비밀번호를 확인해주세요");
                        return;
                    }
                    if (fn.tpwd.value != "") passwd = fn.tpwd.value;
                    else{
                        alert("이메일와 비밀번호를 확인해주세요");
                        return;
                    }
                    if (fn.tname.value != "") value = fn.tname.value;
                    else{
                        alert("삭제할 회원이 없습니다.");
                        return;
                    }
                    $.ajax({
                        url: "/delete",
                        method: "GET",
                        Type: "json",
                        contentType: "application/json; charset=UTF-8",
                        data: {
                            'target': value,
                            'temail': email,
                            'tpwd': passwd
                        },
                        success: function (data) {
                            $.each(data, function (k, v) {
                                $("#tr"+v).remove();
                            })
                        },
                        error: function (request, status, error) {
                            console.log("code:" + request.status);
                            console.log("message:" + request.responseText);
                            console.log("error:" + error);
                        }
                    })
                });//e:$("#delete").on("click")
            },//e: success: function (data)

            error: function (request, status, error) {
                console.log("code:" + request.status);
                console.log("message:" + request.responseText);
                console.log("error:" + error);
            }
        });
    })

    //==================출력============================
    /*for(var i=0;i<keyName.length;i++){
        var $div = $("<div></div>");
        $div.append(jsonList[0][keyName[i]].value);
        $("#resultArea").append($div);
    }*/


});//e:$().ready()

