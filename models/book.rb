require_relative './item'

class Book < Item
  attr_accessor :publish_date, :publisher, :cover_state

  def initialize(publisher, publish_date, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    true if super || cover_state == 'bad'
  end
end
