/*var welcome_content_CHS = "<p>一些小心情</p><p>一些小文字</p><p>一些小分享</p><p>一些小快乐</p>";
        var welcome_content_EN = "<p>a little emotions</p><p>a little words</p><p>a little sharing</p><p>a little happiness</p>";
        $("#welcome_content_CHS").html(welcome_content_CHS);
        $("#welcome_content_EN").html(welcome_content_EN);*/
$("#welcome_navi button:nth-child(1)").css("margin-right","100px");
$("#welcome_navi button").hover(
    function () {
        $(this).css("background","#3ba3ed");
    },
    function () {
        $(this).css("background","buttonface");
    }
);
$("#welcome_navi button:nth-child(1)").click(function () {
    window.location.href = "./home.html";
});
$("#welcome_navi button:nth-child(2)").click(function () {
    window.location.href = "./manager_login.html";
});