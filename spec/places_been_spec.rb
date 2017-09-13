require 'rspec'
require 'places_been'

describe(PlacesBeen) do
  let(:place1){PlacesBeen.new("Japan")}
  describe('#name') do
    it 'will have a readable name'do
      expect(place1.name).to(eq("Japan"))
    end
  end

  describe('.places') do
    it 'will have a readable places list' do
      expect(PlacesBeen.all).to(be_a(Array))
    end
  end

  describe('#save') do
    it 'will save a place to the list of places' do
      place1.save
      expect(PlacesBeen.all).to(eq([place1]))
    end

  end

end
