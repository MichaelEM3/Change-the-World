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




$(document).ready(function(){

  $('.club_users').on('click', function(){

          $('.user_club_show').slideToggle();

      });

     $('.club_stories').on('click', function(){
      console.log("This")

          $('.stories_show').slideToggle();

      });

      $('.club_details').on('page:load', function(){

          $('.about_container').slideToggle();

      });



     // $('.leave_a_comment').on('click', function(){
     //      $(this).sibling('story_comments').slideToggle();
     //  });

       $('.leave_a_comment').on('page:load', function(){

          $(this).next().slideToggle();

      });

      //  $('.leave_a_comment').on('click', function(){
      //     $('.story_comments').slideToggle();
      // });

      // $('.leave_a_comment').on('click', function(){
      //     $('.story_comments').slideToggle();
      // });

      $('.toggle_live_chat').on('click', function(){
      	$('live_chat_container').slideToggle();
      });
});


$(document).ready(function(){

$('.leave_a_comment').on('click', function(){

          $(this).next().slideToggle();

      });
  });

  // Signup and login
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



  $(document).on('ready page:load', ready)
