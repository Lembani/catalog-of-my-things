module ItemController
  def load_all_items
    items_store = []
    items_file = open('./data/items.json')
    if File.exist?(items_file) && File.read(items_file) != ''
      items_data = items_file.read
      JSON.parse(items_data).each do |item|
        case item['className']
        when 'Book'
          # Store Book in Store
        when 'MusicAlbum'
          items_store << MusicAlbum.new(item['name'], item['publish_date'], item['on_spotify'])
        when 'Game'
          # Store Game in Store
        end
      end
    else
      File.write(items_file, '[]')
    end
    items_store
  end

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
