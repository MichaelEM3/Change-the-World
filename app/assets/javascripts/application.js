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

  $('.club_users').on('click', function(evt){
          evt.preventDefault();
          $('.user_club_show').slideToggle();

      });     

     $('.club_stories').on('click', function(evt){
      console.log("This")
          evt.preventDefault();
          $('.stories_show').slideToggle();

      });    
    
      $('.club_details').on('click', function(evt){
          evt.preventDefault();
          $('.about_container').slideToggle();  

      });

     // $('.leave_a_comment').on('click', function(){
     //      $(this).sibling('story_comments').slideToggle();            
     //  });

       $('.leave_a_comment').on('click', function(evt){
          evt.preventDefault();
          $(this).next().slideToggle();

      });   

      //  $('.leave_a_comment').on('click', function(){
      //     $('.story_comments').slideToggle();            
      // });  

      // $('.leave_a_comment').on('click', function(){
      //     $('.story_comments').slideToggle();            
      // });    
});


$(document).ready(function(){
  $('#new_commentary').on('submit', function(evt){
    evt.preventDefault();
    $.ajax('#commentary_comment', {
      success: function(evt, data) {
        alert("working");
        $(this).appendTo(".story_comments");
      }
    });
  });
});
