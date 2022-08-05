
require './models/book'

module BookController
  # def list_book
  #   if @books.empty?
  #     puts 'There is no book yet'
  #   else
  #     @books.each { |book| puts "#{[book.class]} Publisher: #{book.publisher} Publish Date: #{book.publish_date} Cover State: #{book.cover_state}" }
  #   end
  # end

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