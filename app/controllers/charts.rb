get '/charts/1' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = {
        chart: {
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
            name: 'PD',
            data: [1,1,1,1,1,1,1,1,1,1]
        }]
    }

    @data.to_json

  else

    erb :index

  end

end

get '/charts/2' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = {
        chart: {
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
        }, {
            name: 'Paulo',
            data: [1]
        }]
    }

    @data.to_json

  else

    erb :index

  end

end

get '/charts/3' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = {
        chart: {
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
        }, {
            name: 'Paulo',
            data: [100]
        }]
    }

    @data.to_json

  else

    erb :index

  end

end

get '/charts/4' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = {
        chart: {
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

    }

    @data.to_json

  else

    erb :index

  end

end

get '/charts/5' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = {
        chart: {
            type: 'pie',
        },

        title: { text: 'Work Thursday' , size: 30},

        series: [{
            name: "Brands",
            colorByPoint: true,
            data: [{name: "Not Work",
                    y: 24.03,
                    sliced: true,
                    selected: true,
                    color: '#99FFCC'},

                   {name: "Work", y: 0.6, color: "#FFFF99" }]
        }]
    }

    @data.to_json

  else

    erb :index

  end

end
