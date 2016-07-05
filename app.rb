require('sinatra')
require('sinatra/reloader')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/result') do
  length = params.fetch('length').to_i()
  height = params.fetch('height').to_i()
  depth = params.fetch('depth').to_i()
  weight = params.fetch('weight').to_i()

  @test_parcel = Parcel.new(length, height, depth, weight)
  erb(:result)
end
