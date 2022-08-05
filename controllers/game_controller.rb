require './models/game'

module GameController
  def add_game
    print 'multiplayer: '
    multiplayer = gets.chomp
    print 'Publish date [yyyy-mm-dd]: '
    publish_date = gets.chomp
    print 'lat played at: '
    last_played_at = gets.chomp
    game = Game.new(multiplayer, publish_date, last_played_at)
    @items << game
    puts 'Game created successfully!'
  end
end