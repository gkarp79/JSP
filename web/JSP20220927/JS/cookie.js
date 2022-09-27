$().ready(function (){
    $("#close").on("click",function (){
        if($("input[name='chkBox']").is(":checked")) {
            $.ajax({
                url: "/JSP20220927/cookie_window.jsp",
                method: "GET",
                contentType: "application/text; charset=utf-8",
                dataType: "text",
                success: function (data) {
                    $("#aaa").text(data);
                }
            })
        }

        $("#aaa").css("visibility","hidden");
    })
})

