var subitem_summary = "<div class=\"subitem_summary\"></div>";

for (var i = 0;i < 15;i++){$(".right_content").append(subitem_summary);}

$(".subitem_summary").html("<a style=\"background-color: transparent\" class=\"subitem_summary_title\" href=\"home.html\">标题标题标题标题标题标题</a>\n" +
    "                    <div style=\"background-color: transparent\" class=\"subitem_summary_content\">摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要</div>")

$("#subitem_album").html("<img src=\"../img/ChMkJ1ah6XqIFvFFAAa5bop774sAAHjswApOYsABrmG421.jpg\"><img src=\"../img/ChMkJ1ah6YCIIVxRADx2UuY06-kAAHjswOBBUEAPHZq099.jpg\"><img src=\"../img/ChMkJ1ah6YWIIlhbACQoXtBMeuQAAHjtAK3UyUAJCh2978.jpg\"><img src=\"../img/ChMkJ1bKwXaIO-c8AAWWfB1YtE8AALGYgP4LMsABZaU707.jpg\"><img src=\"../img/ChMkJ1bKwXaIUwtbAAbS12aQdMQAALGYgPCL84ABtLv579.jpg\"><img src=\"../img/ChMkJ1bKwXaIXdnDAAjG6xki36wAALGYgPXmb0ACMcD412.jpg\">")

for (var i = 0;i < 5;i++) {$("#subitem_message").append("<div>留言留言留言留言留言留言留言...<br/><span>from XXX</span></div>")}

$(".subitem_subheader span:last-child").css("font-family","print_clearly_ot")

$(".subitem_subheader span:last-child").css("font-size","25px")

$(".subitem_summary").hover(
    function () {
        $(this).css("opacity","0.7");
    },
    function () {
        $(this).css("opacity","1");
    }
)

$(".subitem_summary_title").hover(
    function () {
        $(this).css("text-decoration","underline");
    },
    function () {
        $(this).css("text-decoration","none");
    }
)

$(".subitem_subheader").hover(
    function () {
        $(this).css("opacity","0.7");
    },
    function () {
        $(this).css("opacity","1");
    }
)

$("#subitem_title_about_me").click(
    function () {
        window.location.replace("./about_me.html");
    }
)

$("#subitem_title_album").click(
    function () {
        window.location.replace("./album.html");
    }
)

$("#subitem_title_message").click(
    function () {
        window.location.replace("./message.html");
    }
)
