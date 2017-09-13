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
end
