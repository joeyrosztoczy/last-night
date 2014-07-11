$(document).ready(function () {

  // send an HTTP DELETE request for the sign-out link
  $('a#sign-out').on("click", function (e) {
    e.preventDefault();
    var request = $.ajax({ url: $(this).attr('href'), type: 'delete' });
    request.done(function () { window.location = "/"; });
  });

  $("#brew_me").on("submit", function(event){
    event.preventDefault();
    console.log("button was clicked");

    $.post('/brewme', $(this).serialize(), function(response){
    	console.log("Response is " + response);
    	$("#partier_list").empty();
    	$("#partier_list").append(response);


    });
    
  });


 
});