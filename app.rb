require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:form)
end

get('/display') do
  @height = params.fetch('height').to_i
  @width = params.fetch('width').to_i
  @length = params.fetch('length').to_i
  @weight = params.fetch('weight').to_i
  @distance = params.fetch('distance').to_i
  @speed = params.fetch('speed')
  @output = Parcel.new(@height, @width,@length,@weight).cost_to_ship(@distance,@speed)
  erb(:display)
end
