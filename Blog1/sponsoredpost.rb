class SponsoredPost < Post
  def display
    puts "SPONSORED*****"
    super
    puts "SPONSORED*****"
  end
end
