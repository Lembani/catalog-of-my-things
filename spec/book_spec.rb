require 'date'
require_relative '../models/book'
require_relative '../models/item'

describe Book do
  before :each do
    @book = Book.new('Youtube','2018-05-22','bad')
  end

  it 'Must be the instance of the Book class' do
    expect(@book).to be_an_instance_of Book 
  end

  it 'should return a publish date' do
    expect(@book.publish_date).to eq(Date.parse('2018-05-22'))
  end

  it 'Should have the correct property name' do
    expect(@book.publisher).to eq('Youtube')
    expect(@book.cover_state).to eq('bad')
  end

  it 'Should have a method can_be_archived return true' do
    expect(@book.can_be_archived?).to eq(true)
  end
end