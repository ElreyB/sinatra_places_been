require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places_been')
require('pry')

get('/') do
  @atlas = PlacesBeen.all()
  erb(:atlas)
end

post('/') do
  place = params['location']
  map_pin = PlacesBeen.new(place)
  map_pin.save()
  @atlas = PlacesBeen.all()
  binding.pry
  erb(:atlas)
end
