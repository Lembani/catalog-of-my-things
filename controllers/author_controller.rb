require_relative '../models/author'

module AuthorController
  def load_all_authors
    author_store = []
    author_file = open('./data/author.json')
    if File.exist?(author_file) && File.read(author_file) != ''
      author_data = author_file.read
      JSON.parse(author_data).each do |author|
        author_store << Author.new(author['first_name'], author['last_name'])
      end
    else
      File.write(author_file, '[]')
    end
    author_store
  end

  def all_authors
    puts ''
    puts 'All Authors'
    puts ''
    @authors.each do |author|
      puts "ID: #{author.id} First name: #{author.first_name} - Last name #{author.last_name}"
    end
    puts 'No Authors to show' if @authors.empty?
  end

  def create_author
    print 'Enter author first name: '
    first_name = gets.chomp.strip
    print 'Enter author last name: '
    last_name = gets.chomp.strip
    @authors << Author.new(first_name, last_name)
    puts ''
    puts 'Author added successfully!'
    puts ''
  end

end
