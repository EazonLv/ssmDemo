
$(".subitem_subheader span:last-child").css("font-family","monospace")

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

