$(document).ready(function() {

  show_charts();

  create_chart("#chart1", "#container1");
  create_chart("#chart2", "#container2");

});


function create_chart (click_selector, it_to_put_it) {

  $("#main_container").on("click",click_selector, function (event) {

    event.preventDefault();

    var request = $.ajax({
      method: "get",
      url: "/"
    });

    request.done(function(response){

      var j = JSON.parse(response)

      $(it_to_put_it).highcharts(j);

    });

    request.fail( function( response ){
      console.log("failure")
    })

  });

};


function reset_charts () {
  $("#container1").hide();
  $("#container2").hide();
}

function show_charts () {
  $("#container1").show();
  $("#container2").show();
}
