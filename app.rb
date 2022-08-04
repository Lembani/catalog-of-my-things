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
      exit if option == '11'
      @options.menu_options(option)
    end
    puts 'Bye'
  end
end
