get '/charts/:id' do

  if request.xhr?

    logger.info "inside request"

    @data = Chart.find(params[:id])

    @data.chart_data

  else

    erb :index

  end

end
