require_relative './item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :id, :name, :publish_date

  def initialize(name, publish_date, on_spotify)
    super(publish_date)
    @id = Random.rand(1...1000)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify == true
  end
end
