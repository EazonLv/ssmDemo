var bd_subitem_div_article = "<div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">技术 / Technology</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">情感 / Emotion</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">游戏 / Game</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">生活 / Life</div><div style=\"background: transparent;\">(0)</div></div>"

var bd_subitem_div_daily = "<div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">二〇一八年九月 / Sept. 2018</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">二〇一八年八月 / Aug. 2018</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">二〇一八年七月 / Jul. 2018</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">二〇一八年六月 / Jun. 2018</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">二〇一八年五月 / May. 2018</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">二〇一八年四月 / Apr. 2018</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">二〇一八年三月 / Mar. 2018</div><div style=\"background: transparent;\">(0)</div></div>\n" +
    "                        <div class=\"bd_subitem_div_content\" style=\"background: transparent;\"><div style=\"background: transparent;\">更多... / More...</div><div style=\"background: transparent;\">(0)</div></div>"

var bd_content_div = "<div class=\"bd_content_div\">\n" +
    "                        <div class=\"bd_content_div_title\" style=\"background: transparent;\"><span>[顶]</span>标题标题标题标题标题标题标题</div>\n" +
    "                        <div class=\"bd_content_div_summary\" style=\"background: transparent\">摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要</div>\n" +
    "                        <div class=\"bd_content_div_footer\" style=\"background: transparent\">\n" +
    "                            <span class=\"bd_content_div_footer_time\">2018-08-24</span>\n" +
    "                            <span class=\"bd_content_div_footer_read_people\">阅读<span>(0)</span></span>\n" +
    "                            <span class=\"bd_content_div_footer_comments\">评论<span>(0)</span></span>\n" +
    "                            <span class=\"bd_content_div_footer_edit\">编辑</span>\n" +
    "                        </div>\n" +
    "                    </div>"

var bd_content_div_daily_part = "<div class=\"bd_content_div_daily_part\">\n" +
    "                            <div class=\"bd_content_div_daily_part_decoration\" style=\"background: transparent;\"><span>🌞</span><span>❄</span><span>☔</span><span>⚡</span></div>\n" +
    "                            <div class=\"bd_content_div_daily_part_content_summary\" style=\"background: transparent;\">摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要摘要</div>\n" +
    "                            <div class=\"bd_content_div_daily_part_date\" style=\"background: transparent;\">2018.08.24</div>\n" +
    "                        </div>"



$("#bd_subitem_div_article").append(bd_subitem_div_article)

$("#bd_subitem_div_daily").append(bd_subitem_div_daily)

for(var i  = 0;i < 5;i++){$("#right_content_div_article").append(bd_content_div)}

for(var i  = 0;i < 11;i++){$("#bd_content_div_daily").append(bd_content_div_daily_part)}



$(".bd_subitem_subheader span:last-child").css("font-family","print_clearly_ot")

$(".bd_subitem_subheader span:last-child").css("font-size","25px")

$(".write_textarea_article_cross").parent().css("text-align","right")

$(".write_textarea_daily_cross").parent().css("text-align","right")





$(".article_write").hover(
    function () {
        $(this).css("opacity","0.4")
    },
    function () {
        $(this).css("opacity","0.8")
    }
)

$(".bd_item").hover(
    function () {
        $(this).css("opacity","0.4")
    },
    function () {
        $(this).css("opacity","1")
    }
)

$(".bd_subitem_div_content div:nth-child(1)").hover(
    function () {
        $(this).css("opacity","0.4")
        $(this).css("text-decoration","underline")
    },
    function () {
        $(this).css("opacity","1")
        $(this).css("text-decoration","none")
    }
)

$(".bd_content_div").hover(
    function () {
        $(this).css("opacity","0.8")
    },
    function () {
        $(this).css("opacity","1")
    }
)

$(".bd_content_div_footer_read_people").hover(
    function () {
        $(this).css("color","white")
        $(this).find("span").css("color","white")
    },
    function () {
        $(this).css("color","#07558c")
        $(this).find("span").css("color","#07558c")
    }
)

$(".bd_content_div_footer_comments").hover(
    function () {
        $(this).css("color","white")
        $(this).find("span").css("color","white")
    },
    function () {
        $(this).css("color","#07558c")
        $(this).find("span").css("color","#07558c")
    }
)

$(".bd_content_div_footer_edit").hover(
    function () {
        $(this).css("color","white")
    },
    function () {
        $(this).css("color","#07558c")
    }
)

$(".bd_content_div_title").hover(
    function () {
        $(this).css("opacity","0.8")
    },
    function () {
        $(this).css("opacity","1")
    }
)

$(".bd_content_div_daily_part").hover(
    function () {
        $(this).css("opacity","0.8")
    },
    function () {
        $(this).css("opacity","1")
    }
)

var flag = false

$(".bd_items div:nth-child(1)").click(
    function () {
        $("#right_content_div_article").css("display","block")
        $("#right_content_div_daily").css("display","none")
        flag = false
        state()

    }
)

$(".bd_items div:nth-child(2)").click(
    function () {
        $("#right_content_div_article").css("display","none")
        $("#right_content_div_daily").css("display","block")
        flag = true
        state()

    }
)

function state() {
    if (flag == false) {
        $(".bd_items div:nth-child(1)").css("color", "firebrick")
        $(".bd_items div:nth-child(2)").css("color", "#0b71ba")

    }
    else {
        $(".bd_items div:nth-child(1)").css("color", "#0b71ba")
        $(".bd_items div:nth-child(2)").css("color", "firebrick")
    }
}

$(".write_textarea_article_cross").hover(
    function () {
        $(this).css("opacity","0.4")
    },
    function () {
        $(this).css("opacity","0.8")
    }
)

$(".write_textarea_daily_cross").hover(
    function () {
        $(this).css("opacity","0.4")
    },
    function () {
        $(this).css("opacity","0.8")
    }
)

$(".write_textarea_article_cross").click(
    function () {
        $(".write_textarea_article").css("display","none")
    }
)

$(".write_textarea_daily_cross").click(
    function () {
        $(".write_textarea_daily").css("display","none")
    }
)

$("#article_write").click(
    function () {
        $(".write_textarea_article").css("display","block")
    }
)

$("#daily_write").click(
    function () {
        $(".write_textarea_daily").css("display","block")
    }
)

$("#article_write_").click(
    function () {
        $(".write_textarea_article").css("display","block")
    }
)

$("#daily_write_").click(
    function () {
        $(".write_textarea_daily").css("display","block")
    }
)

$("#write_textarea_article_title").focus(
    function () {
        $(this).attr("placeholder","")
    }
)

$("#write_textarea_article_title").blur(
    function () {
        $(this).attr("placeholder","键入标题 / Enter Title")
    }
)

$("#write_textarea_article_content").focus(
    function () {
        $(this).attr("placeholder","")
    }
)

$("#write_textarea_article_content").blur(
    function () {
        $(this).attr("placeholder","键入正文 / Enter Content")
    }
)

$("#write_textarea_daily_title").focus(
    function () {
        $(this).attr("placeholder","")
    }
)

$("#write_textarea_daily_title").blur(
    function () {
        $(this).attr("placeholder","键入日期 / Enter Date")
    }
)

$("#write_textarea_daily_content").focus(
    function () {
        $(this).attr("placeholder","")
    }
)

$("#write_textarea_daily_content").blur(
    function () {
        $(this).attr("placeholder","键入日志内容 / Enter Daily Content")
    }
)

$(".write_textarea_article_button button").hover(
    function () {
        $(this).css("opacity","0.4")
    },
    function () {
        $(this).css("opacity","0.8")
    }
)

$(".write_textarea_article_button button:last-child").click(
    function () {
        alert("恭喜提交成功！")
        $(".write_textarea_article").css("display","none")
        $(".write_textarea_daily").css("display","none")
    }
)

$(".write_textarea_article_button span").hover(
    function () {
        $(this).css("text-decoration","underline")
    },
    function () {
        $(this).css("text-decoration","none")
    }
)