require './item'

class Genre < Item
  attr_reader :id
  attr_accessor :name, :items

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end
end
