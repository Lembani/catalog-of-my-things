module ItemController


  def all_music_albums
    puts ''
    puts 'All Music Albums'
    puts ''
    @items.each do |item|
      if item.is_a?(MusicAlbum)
        puts "ID: #{item.id} - Name: #{item.name} - Published on: #{item.publish_date} - On Spotify: #{item.on_spotify}"
      end
    end
    puts 'No Music Albums to show' if @items.empty?
  end
end
