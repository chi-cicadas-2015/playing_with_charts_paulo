get '/stocks' do

  if request.xhr?

  history = YahooStock::History.new(:stock_symbol => params[:stock_symbol], :start_date => Date.today-20, :end_date => Date.today-2)

  result = history.values_with_header.split("\n")

  temp = {date: [], close: []}

  data = result[1..-1].map do |row|
    row.split(",")
  end

  data.each do |row|
    date = row[0]
    close = row[4]

    temp[:date] << date
    temp[:close] << close.to_f
  end

  p temp

  p temp[:date]
  p temp[:close]

  # @result = temp[:close].to_s # to_s works


  @chart = {chart: {type: 'line'},
      title: { text: 'Maddies Meanness Over Time' , size: 30},
      xAxis: {
        # these are column
          title: {text: 'Wooooooo'},
          type: 'datetime',
          categories: ['Jan', 'Feb', 'Mar']
      },
      yAxis: {
        # these are rows
          title: {text: 'Whats up'}},
            series: [{name: 'Maddie', data: [0, 2000, 8000]},
                     {name: 'Paulo', data: [1,1,1]}
  ]}


  @chart.to_s

  # @response = {chart: {type: 'line'},
  #     title: { text: 'Maddies Meanness Over Time' , size: 30},
  #     xAxis: {
  #       # these are column
  #         title: {text: 'Wooooooo'},
  #         type: 'datetime',
  #         categories: ['Jan', 'Feb', 'Mar']
  #     },
  #     yAxis: {
  #       # these are rows
  #         title: {text: 'Whats up'}},
  #           series: [{name: 'Maddie', data: [0, 2000, 8000]},
  #                    {name: 'Paulo', data: [1,1,1]}
  # ]}
  # #
  # @response
  #
  # p @response

  # @data = Chart.find(1)
  #
  # @data.chart_data

  else

    erb :index

  end

end
