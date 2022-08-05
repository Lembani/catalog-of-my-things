require './models/label'

module LabelController
  def list_label
    if @labels.empty?
      puts 'There is not label yet'
    else
      @labels.each { |label| puts "#{[label.class]} Title: #{label.title} Color: #{label.color}" }
    end
  end

  def add_label
    print 'Title: '
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    label = Label.new(title, color)
    @labels.push(label)
  end

  def acces_label
    labels_store = []
    label_file = open('./data/label.json')
    if File.exist?(label_file) && File.read(label_file) != ''
      data = label_file.read
      JSON.parse(data).each { |label| labels_store.push(Label.new(label["title"], label["color"])) }
    else
      File.write(label_file, '[]')
    end
    labels_store
  end

  def save_label
    labels_store = []
    @labels.each do |label|
      labels_store << { title: label.title, color: label.color }
    end
    File.write('./data/label.json', labels_store.to_json)
  end
end
