require 'date'

class Item
  attr_reader :publish_date
  attr_accessor :genre, :author, :source, :label, :archived, :id

  def initialize(publish_date)
    @id = id || Random.rand(1...1000)
    @archived = false
    @publish_date = Date.parse(publish_date)
    @genre = genre
    @author = author
    @source = source
    @label = label
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.items << self unless author.items.include?(self)
  end

  def add_source(source)
    @source = source
    source.items << self unless source.items.include?(self)
  end

  def add_label(label)
    @label = label
    label.items << self unless label.items.include?(self)
  end

  def can_be_archived?
    (Date.today.year - @publish_date.year) > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
