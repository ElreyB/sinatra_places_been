require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/places_been')

get('/') do
  @atlas = PlacesBeen.all()
  erb(:atlas)
end

post('/') do
  place = params['place']
  place = PlacesBeen.new(place)
  place.save()
  @atlas = PlacesBeen.all()
  erb(:atlas)
end
