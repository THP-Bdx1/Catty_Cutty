$(document).ready(function () {
  document.addEventListener("turbolinks:load", function () {

  $(".modal-inscription").click(function(){

    $(".modal1").addClass("visible");
    console.log("Visible");
  });
  
  $(".js-close-modal1").click(function(){
    $(".modal1").removeClass("visible");
        console.log("Invisible");
  });

  $(document).click(function (event) {
    //if you click on anything except the modal itself or the "open modal" link, close the modal
    if (!$(event.target).closest(".modal1,.modal-inscription").length) {
      $("body").find(".modal1").removeClass("visible");
    }
  });

  $(".modal-connection").click(function(){
    $(".modal2").addClass("visible");
  });
  
  $(".js-close-modal2").click(function(){
    $(".modal2").removeClass("visible");
  });
  
  $(document).click(function(event) {
    //if you click on anything except the modal itself or the "open modal" link, close the modal
    if (!$(event.target).closest(".modal2,.modal-connection").length) {
      $("body").find(".modal2").removeClass("visible");
    }
  });
    });
});