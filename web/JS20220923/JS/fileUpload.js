$().ready(function(){
    $("#uploadFile").on("change", function(ev){
        const filesList = this.files;

        fn.method = "post";
        fn.action = "/fu";
        fn.submit();
    })// e:$("uploadFile").on("change")
})// e:$().ready