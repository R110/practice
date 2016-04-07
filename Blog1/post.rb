class Post
  attr_reader :title, :date, :text
  def initialize(title, date, text)
    @title = title
    @date = Time.now.to_s
    @text = text
  end
  def display
    puts @title
    puts "**************"
    puts @text
    puts "----------------"
  end
end
