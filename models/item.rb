class Item
  def initialize(genre, author, source, label, publish)
    @genre = genre
    @author = author
    @source  = source
    @label = label
  end

  def can_be_archived?
    @archived
  end

  private :can_be_archived

  def move_to_archive
  end
end