get '/stocks' do



  if request.xhr?
  #

  p params

  p params[:stock_symbol]

  # @quote = YahooStock::Quote.new(:stock_symbols => params[:stock_symbol])
  #
  # @quote.results.output

  @history = YahooStock::History.new(:stock_symbol => params[:stock_symbol], :start_date => Date.today-20, :end_date => Date.today-2)

  @history.values_with_header

  #
  else
  #
  #   erb :index
  #
  end

end
