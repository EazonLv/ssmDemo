

$(".aside").html("<div>首页 home</div><div>关于我 about me</div><div>博客日记 blog & daily</div><div>留言 message</div><div>友情链接 link</div>")

$("#subheader").html("a small but exquisite website")

$(".copyright").text("Copyright © Eazon Lv from 2018.8")

$(".header").css("color","#fcfa")

$(".subheader").css("color","#fcfa")



/*动作*/


$(".aside div").prop("class","aside_content")

$(".aside div").hover(
    function () {
        $(this).css("border","1px solid #000000");
        $(this).css("border-radius","5px");
    },
    function () {
        $(this).css("border","none");
    }
)

$(".items").hover(
    function () {
        $(this).css("background","buttonface");
    },
    function () {
        $(this).css("background","white");
    }
)

$(".items").css("text-decoration","none")








