$(document).ready(function(){
    document.addEventListener("turbolinks:load", function () {

        $("#hamburger-admin").click(function(){
            $(".hamburger-admin-table").toggle();
        });

        $("#hamburger-order").click(function(){
            $(".hamburger-order-table").toggle();
        });
    });
});