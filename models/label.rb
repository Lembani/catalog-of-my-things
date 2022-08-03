class Label
  attr_accessor :item

  def initialize(title, color)
    @id = Random.rand(1..100)
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    item.add_label = self
    @items.push(item)
  end
end
