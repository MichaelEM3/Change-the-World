



  // Signup and login


function initialise(){

});
$(document).ready(function(){
  initialise();
});
$(document).ajaxComplete(function () {
  initialise();
});





  function ready() {
    $('.trigger').on("click", function() {
      $('.overlay').show();
      $('.modal').show('slow');
    });

    $('.overlay').on("click", function() {
      $(this).hide();

    });
    $('.modal').bind("click", function(e) {
      e.stopPropagation();
    });
  };
