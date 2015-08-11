
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

  $('.club_nav_toggle').on('click', function(){
    $('.nav').slideToggle();  
  });


  $('.leave_a_comment').on('page:load', function(){

    $(this).next().slideToggle();

  });   

  $('.toggle_live_chat').on('click', function(){
   $('live_chat_container').slideToggle();
 });
});


$(document).ready(function(){

  $('.project_list').slideToggle();  
  $('.leave_a_comment').next().slideToggle();

  $('.leave_a_comment').on('click', function(evt){
    $(this).next().slideToggle(evt);
  });   

  $('.club_projects_toggle').on('click', function(){
    $('.project_list, club_project_title').slideToggle();  
  });
});  

$(document).ready(function(){

  $('.club_nav_toggle').on('click', function(){

    $(this).next().slideToggle();

  });  

});



$(document).ready(function(){
  console.log('document ready');

// #new_task is the id for the form class it can be fetched in the browser console
$('#new_commentary').on("ajax:success", function(evt) {
  console.log(arguments);
    // window.location.reload();
    alert("step 1")
    //  #task_name is the id for the input box also found in the browser window
   var data = $('#commentary_comment').val();
    $('.story_inner_container').append(data);
    alert("Yay!!!")
  }).on('ajax:error', function() {
    console.log('There is an error in the code!');

    return false;
  });
});

// // $('#new_commentary').on('click', function() {
// //   $.ajax()

// $(document).ready(function() {
//   $("#new_commentary").on("click", "button", function() {
//         alert("hi")
//     $.ajax('#commentary_comment', {
//       alert("hi")
//       success: function(response) {
//         $('.story_comment_bar').html(response).fadeIn();
//       }
//     });
//   });
// });
