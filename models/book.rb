require 'item'

class Book < Item
  def initialize(publisher, cover_state)
    super(publish_date)
    @publisher = publisher
    @cover_state = cover_state
  end

  def can_be_archived?
    true if publish_date > 10 || cover_state == 'bad'
  end
end
