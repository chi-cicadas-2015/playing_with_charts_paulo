# get '/charts/1' do
#
  # logger.info "here now /charts/1"
  #
  # if request.xhr?
  #
  #   logger.info "inside request"
  #
  #   @data = {
  #       chart: {
  #           type: 'line'
  #       },
  #       title: { text: 'Maddies Meanness Over Time' },
  #           # text: 'Maddie - Meanness Over Time'
  #
  #       xAxis: {
  #         # these are rows
  #           title: {text: 'Wooooooo'},
  #           type: 'datetime',
  #           categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
  #       },
  #       yAxis: {
  #         # these are columns
  #           title: {
  #               text: 'Whats up'
  #           }
  #       },
  #       series: [{
  #           name: 'Maddie',
  #           data: [0, 2000, 8000, -2000,3000,4000,3000,2000,4000,4000],
  #       }, {
  #           name: 'PD',
  #           data: [1,1,1,1,1,1,1,1,1,1]
  #       }]
  #   }
  #
  #   @data.to_json
  #
  #   erb :index
  # else
  #   erb :index
  #
  # end
#
# end
#
#
# get '/charts/2' do
#
#   logger.info "here now /charts/2"
#
#   if request.xhr?
#
#     logger.info "inside request"
#
#     @data = {
#         chart: {
#             type: 'line'
#         },
#         title: { text: 'Another one' },
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
#     erb :index
#   else
#     erb :index
#
#   end
#
# end
