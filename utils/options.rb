# rubocop:disable Metrics/CyclomaticComplexity

require 'json'
require_relative '../controllers/item_controller'
require_relative '../controllers/music_album_controller'
require_relative '../controllers/genre_controller'
require_relative '../controllers/book_controller'
require_relative '../controllers/label_controller'
require_relative '../controllers/game_controller'

class Options
  include ItemController
  include MusicAlbumController
  include GenreController
  include BookController
  include LabelController
  include GameController

  def initialize
    @items = load_all_items
    @albums = []
    @genres = load_all_genres
    @labels = acces_label
    @books = []
  end

  def show_menu
    puts ''
    puts 'Enter a number to choose an option below: '
    puts '1. List All Books'
    puts '2. List All Labels'
    puts '3. List All Music Albums'
    puts '4. List All Genres'
    puts '5. List Of Games'
    puts '6. List All Authors'
    puts '7. Add A Book'
    puts '8. Add a Music Album'
    puts '9. Add A Genre'
    puts '10. Add A Game'
    puts '11. Add Label'
    puts '12. Quit'
    puts ''
  end

  # rubocop:disable Metrics/MethodLength
  def menu_options(option)
    case option
    when '1'
      list_book
    when '2'
      list_label
    when '3'
      all_music_albums
    when '4'
      all_genres
    when '5'
      list_game
    when '6'
      # list authors
    when '7'
      add_book
    when '8'
      create_music_album
    when '9'
      create_genre
    when '10'
      add_game
    when '11'
      add_label
    end
  end
  # rubocop:enable Metrics/MethodLength
end

# rubocop:enable Metrics/CyclomaticComplexity
