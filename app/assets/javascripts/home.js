



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
