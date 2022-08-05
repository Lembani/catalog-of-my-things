require './utils/options'

class App
  def initialize
    @options = Options.new
  end

  def run
    puts ''
    puts '     Welcome to      '
    puts '  Catalog Of Things  '
    puts ''

    loop do
      @options.show_menu
      print 'Option: '
      option = gets.chomp
      exit if option == '12'
      @options.menu_options(option)
      @options.save_items
      @options.save_genre
      @options.save_label
      @options.save_author
      puts 'Bye'
    end
  end
end
