get '/' do

  logger.info "here now"

  if request.xhr?

    logger.info "inside request"

    @data = {
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
    }

    @data.to_json

    # erb :index, layout: false, locals: {data: @data}

  else
    erb :index
  end


end
# {"chart":{"type":"bar"},"title":{"text":"Fruit Consumption"},"xAxis":{"categories":["Apples","Bananas","Oranges"]},"yAxis":{"title":{"text":"Fruit eaten"}},"series":[{"name":"Jane","data":[1,0,4]},{"name":"John","data":[5,7,3]}]}
