require './utils/options'

class App
  def initialize
    @options = Options.new
    @books = []
    @labels = []
  end

  def list_book
    if book.empty?
      puts 'There is no book yet'
    else
      @books.each { |book| puts "#{[book.class]} Publisher: #{book.publisher} Publish Date: #{book.publish_date} Cover State: #{book.cover_state}" }
    end
  end

  def list_label
    if @lable.empty?
      puts 'There is not label yet'
    else
      @labels.each { |label| puts "#{[label.class]} Title: #{label.title} Color: #{label.color}" }
    end
  end

  def Add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Publish Date [yyyy-mm-dd]: '
    publish_date = gets.chomp
    print 'Cover State'
    cover_state = gets.chomp
    book = Book.new(publisher, publish_date, cover_state)
    @books.push(book)
  end

  def Add_label
    print 'Title: '
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    label = Label.new(title, color)
    @labels.push(label)
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
