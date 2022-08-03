require './item'

class Genre
  attr_reader :id
  attr_accessor :name, :item

  def initialize(name)
    @id = Random.rand(1...1000)
    @name = name
    @items = []
  end

  def add_item(item)
    item.add_genre = self
    @items.push(item)
  end
end
