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

  describe('.clear') do
    it 'will clear all items from the list' do
      place1.save
      PlacesBeen.clear
      expect(PlacesBeen.all).to(eq([]))
    end
  end

  describe('#id') do
    it 'will increment an id by one each time a new place is added' do
      place1.save
      place2 = PlacesBeen.new("Spain")
      place2.save
      expect(place1.id).to(eq(1))
      expect(place2.id).to(eq(2))
    end
  end

end
