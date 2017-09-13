require 'rspec'
require 'places_been'

describe(PlacesBeen) do
  describe('#name') do
    it 'will have a readable name'do
    place1 = PlacesBeen.new("Japan")
      expect(place1.name).to(eq("Japan"))
    end
  end
end
