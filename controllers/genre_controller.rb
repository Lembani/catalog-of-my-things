module GenreController
  def all_genres
    puts 'All Genres'
    @genres.each_with_index do |genre, index|
      puts "#{index + 1}. ID: #{genre.id} Name: #{genre.name}"
    end
    puts 'No Genres to show' if @genres.empty?
  end
end
