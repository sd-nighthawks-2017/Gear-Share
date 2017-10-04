$(document).ready(function() {
  $("#task-link").on('click', function(event) {
    event.preventDefault();

    $("#task-list").toggle("slow", function() {

    });
  });
});
