require './item'

class Genre
  attr_reader :id
  attr_accessor :name, :items

  def initialize(name, item)
    @id = Random.rand(1...1000)
    @name = name
    @item = item
    @iten.genre << self

    @items = []
  end
end
