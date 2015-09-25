$(document).ready(function() {

  // $("#main_container").on("click", $(this).children(), function (event) {
  //   console.log('hi');
  // }

  $("nav a").on("click", function(){
    console.log($(this).attr("id"));

    var id = $(this).attr("id");

    create_chart("#" + id);


  })


  // create_chart("#2");
  // create_chart("#3");
  // create_chart("#4");
  // create_chart("#5");

});


function create_chart (click_selector) {

  $("#main_container").on("click",click_selector, function (event) {

    event.preventDefault();

    reset_charts();
    $("#container1").show();

    var url = $(click_selector).attr("href");
    var id = $(click_selector).attr("id");

    var request = $.ajax({
      method: "get",
      url: url,
    });

    request.done(function(response){

      var j = JSON.parse(response);

      $("#container1").highcharts(j);

    });

    request.fail( function( response ){

      console.log("failure")

    })

  });

};


function reset_charts () {
  $("#graphs").children().hide();
};
