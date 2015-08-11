
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
    // alert("step 1")
    //  #task_name is the id for the input box also found in the browser window
   var data = $('#commentary_comment').val();
    $('.story_comments_inner_container').append('<p>' + data + '</p>');
    // alert("Yay!!!")
  }).on('ajax:error', function() {
    console.log('There is an error in the code!');

    return false;
  });
});

$(document).ready(function(){
  console.log('document ready');

// #new_task is the id for the form class it can be fetched in the browser console
$('#new_story').on("ajax:success", function(evt) {
  console.log(arguments);
    // window.location.reload();
    // alert("step 1")
    //  #task_name is the id for the input box also found in the browser window
   var data = $('#story_title, #story.story').val();
    $('.stories_show').append('<div>' + data + '</div>');
    // alert("Yay!!!")
  }).on('ajax:error', function() {
    console.log('There is an error in the code!');

    return false;
  });
});

