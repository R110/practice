require_relative("post.rb")
require_relative("blog.rb")
require_relative("sponsoredpost.rb")


flBlog = Blog.new

flBlog.add_post(Post.new("1", "March 23", "Great events coming up"))
flBlog.add_post(Post.new("2", "June 23", "Hot events coming up"))
flBlog.add_post(Post.new("3", "March 23", "Great events coming up"))
flBlog.add_post(Post.new("4", "Jan 23", "Great events coming up"))
flBlog.add_post(SponsoredPost.new("5", "Jan 23", "Great events coming up"))

flBlog.publish_front_page

puts "Enter next, previous or exit"
user_input = gets.chomp


while user_input != "exit"
  if user_input == "next"
    flBlog.next_page
  elsif user_input == "previous"
    flBlog.previous_page
  else user_input !=  "exit"
    puts "Invalid"
  end
  user_input = gets.chomp
end
