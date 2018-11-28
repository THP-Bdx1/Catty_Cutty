$(document).ready(function () {
    document.addEventListener("turbolinks:load", function () {
        
        $(".cart-nav").click(function () {
            $('.fa-shopping-cart').addClass('animated wobble');
            });

            $(".fav-nav").click(function () {
            $('.fa-heart').addClass('animated swing');
            });
            $(".amado-nav .active a").click(function () {
                $('.amado-nav .active a').addClass('animated bounceOut');
            });

             $(".show .amado-btn").click(function () {
                 $('.show .amado-btn').addClass('animated hinge');
             });
            });
});