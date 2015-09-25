get '/charts/1' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = Chart.find(1)

    @data.to_json

  else

    erb :index

  end

end

get '/charts/2' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = Chart.find(1)

    @data.chart_data

  else

    erb :index

  end

end

get '/charts/3' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = Chart.find(2)

    @data.chart_data

  else

    erb :index

  end

end

get '/charts/4' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = Chart.find(3)

    @data.chart_data

  else

    erb :index

  end

end

get '/charts/5' do

  logger.info "here now /charts/1"

  if request.xhr?

    logger.info "inside request"

    @data = @data = Chart.find(4)

    @data.chart_data

  else

    erb :index

  end

end

# get '/charts/1' do
#
#   logger.info "here now /charts/1"
#
#   if request.xhr?
#
#     logger.info "inside request"
#
#     @data = {
#         chart: {
#             type: 'line'
#         },
#         title: { text: 'Maddies Meanness Over Time' , size: 30},
#             # text: 'Maddie - Meanness Over Time'
#
#         xAxis: {
#           # these are rows
#             title: {text: 'Wooooooo'},
#             type: 'datetime',
#             categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
#         },
#         yAxis: {
#           # these are columns
#             title: {
#                 text: 'Whats up'
#             }
#         },
#         series: [{
#             name: 'Maddie',
#             data: [0, 2000, 8000, -2000,3000,4000,3000,2000,4000,4000],
#         }, {
#             name: 'PD',
#             data: [1,1,1,1,1,1,1,1,1,1]
#         }]
#     }
#
#     @data.to_json
#
#   else
#
#     erb :index
#
#   end
#
# end

# get '/charts/2' do
#
#   logger.info "here now /charts/1"
#
#   if request.xhr?
#
#     logger.info "inside request"
#
#     @data = {
#         chart: {
#             type: 'column'
#         },
#         title: { text: 'Looks I Get - Anywhere', size: 30 },
#             # text: 'Maddie - Meanness Over Time'
#
#         xAxis: {
#           # these are rows
#             title: {text: ''},
#             type: 'datetime',
#             categories: ['Looks']
#         },
#         yAxis: {
#           # these are columns
#             title: {
#                 text: ''
#             }
#         },
#         series: [{
#             name: 'Kelsey',
#             data: [40],
#         }, {
#             name: 'Paulo',
#             data: [1]
#         }]
#     }
#
#     @data.to_json
#
#   else
#
#     erb :index
#
#   end
#
# end
