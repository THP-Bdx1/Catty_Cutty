$(document).ready(function () {

    $(document).on("turbolinks:click", function () {
        $("#load_screen").show();
    });

    $(document).on("turbolinks:load", function () {
        $("#load_screen").fadeOut();
    });
    document.addEventListener("turbolinks:load", function () {
        
        $(".cart-nav").click(function () {
            $('.fa-shopping-cart').toggleClass('animated wobble');
            });

            $(".fav-nav").click(function () {
            $('.fa-heart').toggleClass('animated swing');
            });
            $(".amado-nav .active a").click(function () {
                $(this).toggleClass('animated bounceOut');
            });

             $(".show .amado-btn").click(function () {
                 $(this).toggleClass('animated hinge');
             });

             $(".social-info a i").hover(
                 function () {$(this).toggleClass('animated bounce');}
            ); 

            $(".fa-arrow-right").hover(
                function () {$(this).toggleClass('animated slideOutRight');}
                         );
            $(".fa-arrow-left").hover(
                function () {
                    $(this).toggleClass('animated slideOutLeft');
                }
            );
            });
});