// 
// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

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