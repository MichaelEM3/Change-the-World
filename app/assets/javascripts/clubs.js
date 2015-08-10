

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