module ItemController

  def save_items
    items_store = []
    @items.each do |item|
      case item
      when MusicAlbum
        items_store << { name: item.name, publish_date: item.publish_date,
                         on_spotify: item.on_spotify, className: 'MusicAlbum' }
      end
    end
    File.write('./data/items.json', items_store.to_json)
  end

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
