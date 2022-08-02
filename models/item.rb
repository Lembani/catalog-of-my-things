class Item
  attr_accessor :genre, :author, :source, :label, :publish_date, :archived, :id

  def initialize(id, publish_date)
    @id = id
    @archived = false
    @publish_date = publish_date
  end

  def add_genre(genre)
    @genre = genre
  end

  def add_author(author)
    @author = author
  end

  def add_source(source)
    @source = source
  end

  def add_label(label)
    @label = label
  end

  def can_be_archived?
    @publish_date > 10
  end

  private :can_be_archived

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
