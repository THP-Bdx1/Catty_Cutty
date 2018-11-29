$(document).ready(function () {

    $(document).on("turbolinks:click", function () {
        $("#load_screen").show();
    });

    $(document).on("turbolinks:load", function () {
        $("#load_screen").fadeOut();
    });
    document.addEventListener("turbolinks:load", function () {
        
        $(".cart-nav").hover(function () {
            $('.fa-shopping-cart').toggleClass('animated wobble');
            });

            $(".fav-nav").hover(function () {
            $('.fa-heart').toggleClass('animated swing');
            });
            $(".amado-nav .active a").hover(function () {
                $(this).toggleClass('animated bounceOut');
            });

             $(".show .amado-btn").hover(function () {
                 $(this).toggleClass('animated hinge');
             });

             $(".social-info a i").hover(
                 function () {$(this).toggleClass('animated bounce');}
            ); 

            $(".amado-btn").hover(
                function () {$(this).toggleClass('animated bounceIn');}
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