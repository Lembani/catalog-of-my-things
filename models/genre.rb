require './item'

class Genre
  attr_reader :id
  attr_accessor :name, :item

  def initialize(name, item)
    @id = Random.rand(1...1000)
    @name = name
    @item = item
    @iten.genre << self

    @items = []
  end

  def add_item(item)
    item.add_genre = self
    @items.push(item)
  end
end
