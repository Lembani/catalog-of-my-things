require 'date'
require_relative './item'

class Game < Item
  attr_reader :multiplayer, :last_played_at
  attr_accessor :publish_date

  def initialize(multiplayer, publish_date, last_played_at)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = Date.parse(last_played_at)
  end

  def can_be_archived?
    super && (Date.today.year - last_played_at.year) > 2
  end

  private :can_be_archived?
end
