require('sinatra')
require('sinatra/reloader')
require('./lib/triangle')
also_reload('lib/**/*.rb')

get ('/') do
  erb(:index)
end

get ('/result') do

  erb(:result)
end
