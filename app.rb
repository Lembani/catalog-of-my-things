require './utils/options'

class App
  def initialize
    @options = Options.new
  end

  def run
    puts 'Welcome to app'
    loop do
      @options.show_menu
      option = gets.chomp
      exit if option == '10'

      @options.menu_options option
    end
    puts 'Bye'
  end
end
