require_relative '../models/genre'

module GenreController
  def load_all_genres
    genre_store = []
    genre_file = open('./data/genres.json')
    if File.exist?(genre_file) && File.read(genre_file) != ''
      genre_data = genre_file.read
      JSON.parse(genre_data).each do |genre|
        genre_store << Genre.new(genre['name'])
      end
    else
      File.write(genre_file, '[]')
    end
    genre_store
  end

  def all_genres
    puts ''
    puts 'All Genres'
    puts ''
    @genres.each do |genre|
      puts "ID: #{genre.id} Name: #{genre.name}"
    end
    puts 'No Genres to show' if @genres.empty?
  end

  def create_genre
    print 'Enter genre name: '
    name = gets.chomp.strip
    @genres << Genre.new(name)
    puts ''
    puts 'Genre added successfully!'
    puts ''
  end

  def save_genre
    genre_store = []
    @genres.each do |genre|
      genre_store << { name: genre.name }
    end
    File.write('./data/genres.json', genre_store.to_json)
  end
end
