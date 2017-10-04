$(document).ready(function() {
  $("#task-link").on('click', function(event) {
    event.preventDefault();

    $("#task-list").toggle("slow", function() {

    });
  });

  $(".show-item-button").on('click', function(event) {
    console.log("clicked")
    event.preventDefault();
    $(this).closest(".card").find(".append-show").toggle();
  });

});
