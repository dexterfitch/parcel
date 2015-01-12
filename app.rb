require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel.rb')

get('/') do
  erb(:form)
end

get('/parcel') do
  @length = params.fetch('length').to_f
  @width = params.fetch('width').to_f
  @height = params.fetch('height').to_f
  @weight = params.fetch('weight').to_f
  instance = Parcel.new(@length, @width, @height, @weight)
  @result = instance.cost_to_ship()
  @result_string = @result.to_s
  erb(:parcel)
end
