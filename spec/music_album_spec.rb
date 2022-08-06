require 'date'
require_relative '../models/music_album'

describe MusicAlbum do
  before :each do
    @music_album = MusicAlbum.new('Speak Now', '2010-10-25', false)
  end

  it 'Should be an instance of the Class' do
    expect(@music_album).to be_an_instance_of MusicAlbum
  end

  it 'should return a correct album name' do
    expect(@music_album.name).to eq('Speak Now')
  end

  it 'should return a publish date' do
    expect(@music_album.publish_date).to eq(Date.parse('2010-10-25'))
  end

  it 'should return false if music album is not on spotify' do
    expect(@music_album.on_spotify).to eq(false)
  end

  it 'should return false if can be archived method is false' do
    expect(@music_album.can_be_archived?).to eq(false)
  end
end
