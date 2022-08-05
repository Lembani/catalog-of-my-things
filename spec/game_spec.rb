require 'date'
require_relative '../models/game'
require_relative '../models/item'

describe Game do
  before :each do
    @game = Game.new('Xender', '2019-10-22', '2022-10-05')
  end

  it 'Should be the instance of the class Game' do
    expect(@game).to be_instance_of Game
  end

  it 'Should have those properties' do
    expect(@game.multiplayer).to eq('Xender')
    expect(@game.last_played_at).to eq(Date.parse('2022-10-05'))
  end
end