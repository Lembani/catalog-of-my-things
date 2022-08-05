# rubocop:disable Metrics/CyclomaticComplexity

require 'json'
require_relative '../controllers/item_controller'
require_relative '../controllers/music_album_controller'
require_relative '../controllers/genre_controller'
require_relative '../controllers/book_controller'
require_relative '../controllers/label_controller'
require_relative '../controllers/author_controller'

class Options
  include ItemController
  include MusicAlbumController
  include GenreController
  include BookController
  include LabelController
  include AuthorController

  def initialize
    @items = load_all_items
    @albums = []
    @genres = load_all_genres
    @labels = acces_label
    @books = []
    @authors = load_all_authors
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
    puts '11. Add An Author'
    puts '12. Quit'
    puts ''
  end

  def menu_options(option)
    case option
    when '1' then list_book
    when '2' then list_label
    when '3' then all_music_albums
    when '4' then all_genres
    when '5' then add_label
    when '6' then all_authors
    when '7' then add_book
    when '8' then create_music_album
    when '9' then create_genre
    when '10' # add game
    when '11' then create_author
    end
  end
end

# rubocop:enable Metrics/CyclomaticComplexity
