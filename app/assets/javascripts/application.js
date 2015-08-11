//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// function ready() {
//   console.log('document ready');

//   $('#new_task').on("ajax:success", function(evt, data) {
//     console.log(arguments);
//     // window.location.reload();
//     $('#task_name').val('');
//     $('body').append(data);
//   }).on('ajax:error', function() {
//     alert('Oops!');
//   });
// }

// // $(ready);
// $(document).on('page:load', ready);
// $('.user_club_show').hide();
//  $('.stories_show').hide(); 
//   $('.about_container').hide()
// });





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
