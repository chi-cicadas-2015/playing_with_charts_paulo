get '/' do
  @charts = Chart.all
  erb :index
end
