// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
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
