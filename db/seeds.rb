charts = [["Looks1", {chart: {
        type: 'column'
    },
    title: { text: 'Looks I Get - Anywhere', size: 30 },
        # text: 'Maddie - Meanness Over Time'

    xAxis: {
      # these are rows
        title: {text: ''},
        type: 'datetime',
        categories: ['Looks']
    },
    yAxis: {
      # these are columns
        title: {
            text: ''
        }
    },
    series: [{
        name: 'Kelsey',
        data: [40],
        color: "#F1BCAB"
    }, {
        name: 'Paulo',
        data: [1]
    }]
}],

["Looks2",{chart: {
        type: 'column'
    },
    title: { text: 'Looks I Get - Boystown', size: 30 },

    xAxis: {
      # these are rows
        title: {text: ''},
        type: 'text',
        categories: ['Looks']
    },
    yAxis: {
      # these are columns
        title: {
            text: ''
        }
    },
    series: [{
        name: 'Kelsey',
        data: [0],
        color: "#F1BCAB"
    }, {
        name: 'Paulo',
        data: [100],
        color: "#94B8FF"
    }]
}],
["Cat",{chart: {
        type: 'column',
    },

    title: { text: 'Where My Cat Goes' , size: 30},

    xAxis: {
      # these are rows
        title: {text: ''},
        type: 'text',
        categories: ['Where He Wants', 'Where I Want'],
    },
    yAxis: {
      # these are columns
        title: {
            text: ''
        }
    },
    series: [{
        name: 'Butler',
        data: [600,0],
        color: '#66E0A3',
    }],

}],

["THU",{chart: {
        type: 'pie',
    },

    title: { text: 'Work Thursday' , size: 30},

    series: [{
        name: "Work",
        colorByPoint: true,
        data: [{name: "Not Work",
                y: 24.03,
                sliced: true,
                selected: true,
                color: '#99FFCC'},

               {name: "Work", y: 0.6, color: "#FFFF99" }]
    }]
}],
["Mean",{chart: {
        type: 'line'
    },
    title: { text: 'Maddies Meanness Over Time' , size: 30},
        # text: 'Maddie - Meanness Over Time'

    xAxis: {
      # these are rows
        title: {text: 'Wooooooo'},
        type: 'datetime',
        categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
    },
    yAxis: {
      # these are columns
        title: {
            text: 'Whats up'
        }
    },
    series: [{
        name: 'Maddie',
        data: [0, 2000, 8000, -2000,3000,4000,3000,2000,4000,4000],
    }, {
        name: 'Paulo',
        data: [1,1,1,1,1,1,1,1,1,1]
    }]
}]]

charts.each do |c|
  Chart.create(chart_name: c[0] ,chart_data: c[1].to_json)
end
