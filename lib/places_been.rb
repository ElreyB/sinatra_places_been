class PlacesBeen
  @@places = []
  attr_accessor(:name)
  attr_reader(:id)
  def initialize(name)
    @name = name
    @id = @@places.length + 1
  end

  def self.all
    @@places
  end

  def save
    @@places.push(self)
  end

  def self.clear
    @@places = []
  end

  def self.find(id)
    place_id = id.to_i()
    @@places.find do |place|
      if place.id == place_id
        return place
      end
    end
  end
end
