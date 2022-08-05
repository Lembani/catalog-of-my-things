require './models/book'

module BookController
  def add_book
    print 'Publisher: '
    publisher = gets.chomp
    print 'Publish Date [yyyy-mm-dd]: '
    publish_date = gets.chomp
    print 'Cover State: '
    cover_state = gets.chomp
    book = Book.new(publisher, publish_date, cover_state)
    @items << book
  end
end
