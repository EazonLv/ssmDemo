$(".login").css("margin-top","10px");
$("#back_button").css("background","none");
$("#back_button").css("border","1px solid #ba4114");

$("#back_button").hover(
    function () {
        $(this).css("background-color","#fcd9cc");
    },
    function () {
        $(this).css("background-color","white");
    }
)

$("#login_button").hover(
    function () {
        $(this).css("background-color","#97cff7");
    },
    function () {
        $(this).css("background-color","#108ee9");
    }
)

$("#back_button").click(function () {
    window.location.href = "./welcome_page.html";
    return false;/*表单按钮会有默认事件*/
})