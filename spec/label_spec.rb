require_relative '../models/label'
require_relative '../models/book'

describe Label do
  before :each do
    @label = Label.new('class50', 'red')
    @book = Book.new('Youtube', '2018-05-22', 'bad')
  end

  it 'Should contain these properties' do
    expect(@label.title).to eq('class50')
    expect(@label.color).to eq('red')
  end

  it 'Should include the item' do
    expect(@label.add_item(@book)).to include(@book)
  end
end
