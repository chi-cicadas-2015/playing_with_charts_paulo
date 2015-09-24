$(document).ready(function() {

  create_chart("#chart1", "#container");
  create_chart("#chart2", "#container2");

  

});

function create_chart (click_selector, it_to_put_it) {

  $("#main_container").on("click",click_selector, function () {

      $(it_to_put_it).highcharts({
          chart: {
              type: 'bar'
          },
          title: {
              text: 'Fruit Consumption'
          },
          xAxis: {
              categories: ['Apples', 'Bananas', 'Oranges']
          },
          yAxis: {
              title: {
                  text: 'Fruit eaten'
              }
          },
          series: [{
              name: 'Jane',
              data: [1, 0, 4]
          }, {
              name: 'John',
              data: [5, 7, 3]
          }]
      });
  });
};


// function loadGraph() {
//   $.ajax({
//     url: "/accounts/1",
//     dataType: "json",
//     success: drawGraph
//   });
// }
//
// function drawGraph(chart_data) {
//
//   var dailyBalances = $.map(chart_data.daily_balances, function(balance) { return parseInt(balance); });
//   var startDate = chart_data.transactions[0].tx_date;
//
//   $('#chart').highcharts({
//         title: { text: "Daily Balances Over Time" },
//         chart: { zoomType: 'x' },
//         xAxis: { type: 'datetime' },
//         yAxis: { // left y axis
//             title: { text: null },
//             labels: {
//                 align: 'left',
//                 x: 3,
//                 y: 16,
//                 format: '{value:.,0f}'
//             },
//             showFirstLabel: false
//         },
//         series: [{
//             name: "Account Balance",
//             marker: { enabled: false },
//             data: dailyBalances,
//             pointStart: Date.parse(startDate),
//             pointInterval: 24 * 3600 * 1000 // one day
//         }]
//     });
// }
