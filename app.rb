require 'options'

class App
  def initialize
    @options = Options.new
  end

  def run
    puts 'Welcome to app'
    loop do
      @options.show_menu
      option = gets.chomp
      @options.menu_options option
    end
    puts 'Bye'
  end
end
