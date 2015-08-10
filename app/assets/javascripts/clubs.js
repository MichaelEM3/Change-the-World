// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready(function(){

  $('.club_users').on('page:load', function(){

          $('.user_club_show').slideToggle();

      });     

     $('.club_stories').on('click', function(){
      console.log("This")

          $('.stories_show').slideToggle();

      });    
    
      $('.club_details').on('click', function(){

          $('.about_container').slideToggle();  

      });

     // $('.leave_a_comment').on('click', function(){
     //      $(this).sibling('story_comments').slideToggle();            
     //  });

       $('.leave_a_comment').on('click', function(){

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