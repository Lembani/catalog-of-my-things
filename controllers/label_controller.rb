require './models/label'

module LabelController
  def list_label
    if @labels.empty?
      puts 'There is not label yet'
    else
      @labels.each { |label| puts "#{[label.class]} Title: #{label.title} Color: #{label.color}" }
    end
  end

  def Add_label
    print 'Title: '
    title = gets.chomp
    print 'Color: '
    color = gets.chomp
    label = Label.new(title, color)
    @labels.push(label)
  end
end
