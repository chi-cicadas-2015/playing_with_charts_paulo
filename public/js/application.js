$(document).ready(function() {

  create_chart("#chart1", "#container1");
  create_chart("#chart2", "#container1");
  create_chart("#chart3", "#container1");

});


function create_chart (click_selector, id_to_put_it) {

  $("#main_container").on("click",click_selector, function (event) {

    event.preventDefault();

    reset_charts();
    $(id_to_put_it).show();

    var url = $(click_selector).attr("href");

    var request = $.ajax({
      method: "get",
      url: url
    });

    request.done(function(response){

      var j = JSON.parse(response);

      $(id_to_put_it).highcharts(j);

    });

    request.fail( function( response ){

      console.log("failure")

    })

  });

};


function reset_charts () {
  $("#graphs").children().hide();
};
