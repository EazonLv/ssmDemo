var b = true;
$("#navi_icon").click(function () {
    b = !b;
    if (b == false){
        f1();
    }
    else {
        f2();
    }
});
function f1() {
    $("#navi_icon").prop("class","navi_open");
};
function f2() {
    $("#navi_icon").prop("class","navi_close");
};