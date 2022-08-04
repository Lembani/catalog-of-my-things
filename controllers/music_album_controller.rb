require_relative '../models/music_album'

module MusicAlbumController
  def create_music_album
    print 'Enter album name: '
    name = gets.chomp.strip
    print 'Enter date published: '
    publish_date = gets.chomp.strip
    print 'Is album on spotiify? (Y/N): '
    on_spotify = gets.chomp
    case on_spotify
    when 'y', 'Y'
      on_spotify = true
    when 'n', 'N'
      on_spotify = false
    else
      puts 'Enter correct value!'
      print 'Is album on spotiify? (Y/N): '
      on_spotify = gets.chomp
    end
    @items << MusicAlbum.new(name, publish_date, on_spotify)
    puts ''
    puts 'Music Album added successfully!'
    puts ''
  end
end
