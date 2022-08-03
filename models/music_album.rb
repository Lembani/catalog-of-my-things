require './item'

class MusicAlbum < Item
  attr_accessor :on_spotify

  def initialize(publish_date, on_spotify, id)
    super(id, publish_date)
    @id = Random.rand(1...1000)
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify == true
  end
end
