# require controllers and utilities
class Options
  def show_menu
    puts ''
    puts 'Choose an option below'
    puts '1. List All Books'
    puts '2. List All Labels'
    puts '3. List All Genres'
    puts '4. List All Music Albums'
    puts '5. List Of Games'
    puts '6. List All Authors'
    puts '7. Add A Book'
    puts '8. Add A Game'
    puts '9. Add a Music Album'
    puts '10. Quit'
    puts ''
  end

  def menu_options(option)
    case option
    when '1'
      # method to list books
      list_book
    when '2'
      # list albums
      list_label
    when '3'
      # list genres
    end
  end
end
