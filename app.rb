require('sinatra')
require('sinatra/reloader')
require('./lib/places')
also_reload('/lib/**/*.rb')

get('/') do
  @tamagotchi = Tamagotchi.all()
  erb(:index)
end
