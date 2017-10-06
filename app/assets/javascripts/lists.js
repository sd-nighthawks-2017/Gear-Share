// When the AJAX call is done, do this with the data
// function tasksNewFormDONEHandler(response) {
//   console.log(response)
//   $("#listed-items").append(response)
// }

// // This prevents the page from using default actions
// function tasksNewFormSUBMITHandler(event) {
//   console.log("Form Submit Handler")
//   event.preventDefault()
// }

// // Use JQuery to submit an AJAX Post to the forms action
// $.ajax({
//   method: "POST",
//   url: "/tasks",
//   data: $(this).serialize()
// }).done(tasksNewFormDONEHandler.bind(this))

// // When the page is done loading, this is what is clicked
// $(document).ready(function() {
//   $("#items-form").on('submit', tasksNewFormSUBMITHandler)
// });
