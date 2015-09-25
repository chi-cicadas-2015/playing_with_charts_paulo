$(document).ready(function() {

  create_chart("#1", "#container1");
  create_chart("#2", "#container1");
  create_chart("#3", "#container1");
  create_chart("#4", "#container1");
  create_chart("#5", "#container1");

});


function create_chart (click_selector, id_to_put_it) {

  $("#main_container").on("click",click_selector, function (event) {

    event.preventDefault();

    reset_charts();
    $(id_to_put_it).show();

    var url = $(click_selector).attr("href");
    var id = $(click_selector).attr("id");

    console.log(id);

    var request = $.ajax({
      method: "get",
      url: url,
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
