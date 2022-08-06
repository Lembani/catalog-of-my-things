require 'date'
require_relative '../models/author'
require_relative '../models/book'

describe Author do
  before :each do
    @author = Author.new('Lembani', 'Sakala')
    @book = Book.new('Purple Cow', '2022-08-12', 'good')
  end

  it 'should take `author parameter` and return author Object()' do
    expect(@author).to be_an_instance_of Author
  end

  it 'should `return the first_name` of the author' do
    expect(@author.first_name).to eq('Lembani')
  end

  it 'should `return the last_name` of the author' do
    expect(@author.last_name).to eq('Sakala')
  end

  it 'should `add the book` to the author' do
    expect(@author.add_item(@book)).to include(@book)
  end
end
