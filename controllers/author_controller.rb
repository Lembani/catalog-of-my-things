require_relative '../models/author'

module AuthorController
  def load_all_authors
    author_store = []
    author_file = open('./data/author.json')
    if File.exist?(author_file) && File.read(author_file) != ''
      author_data = author_file.read
      JSON.parse(author_data).each do |author|
        author_store << Author.new(author['first_name'], author['last_name'])
      end
    else
      File.write(author_file, '[]')
    end
    author_store
  end

end
