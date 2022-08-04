module ItemController
  def all_music_albums
    puts 'All Music Albums'
    @items.each_with_index do |item, index|
      if item.is_a?(MusicAlbum)
        print "#{index + 1}. ID: #{item.id} Name: #{item.name} Published on: #{item.publish_date} On Spotify: #{item.on_spotify}"
      end
    end
    puts 'No Music Albums to show' if @items.empty?
  end
end
