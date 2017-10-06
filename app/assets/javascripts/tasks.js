$(document).ready(function() {

// This controls the show/hide of the My List feature
  $("#task-link").on('click', function(event) {
    event.preventDefault();

    $("#task-list").toggle("slow", function() {
    });
  });

// This controls the show/hide of the Items Index page
  $(".show-item-button").on('click', function(event) {
    event.preventDefault();
    $(this).closest(".card").find(".append-show").fadeToggle("slow");
  });
});
