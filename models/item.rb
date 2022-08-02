class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :archived, :id

  def initialize(id, publish_date)
    @id = id
    @archived = false
    @publish_date = publish_date
  end

  def can_be_archived?
    @publish_date > 10
  end

  private :can_be_archived

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
