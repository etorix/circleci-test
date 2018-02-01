var html_fixture = "test.html";
var sources = ["./assert.js"];
var tests = [];

tests.push(function check_display () {

    document.getElementById("btn").click();
    var element = document.getElementById("div"),
    style = window.getComputedStyle(element),
    display = style.getPropertyValue("display");
    assert(display, "none");

})

