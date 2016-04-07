class UserLogin
  def initialize(username, password)
    @username = username
    @password = password
  end
  def checkCredentials(username, password)
    if (username == @username && password = @password)
      puts "Success"
    else
      puts "Failure"
    end
  end
end

class Countwords
  def self.countwords(text)
    text.split(" ").length
  end
  def self.duplicatewords(text)
    arr = text.split(" ")
    words = {}
    arr.each{|word|
      if words[word.to_sym] != nil
        words[word.to_sym] +=1
      else
         words[word.to_sym] = 1
      end
    }
    num = words.values.reduce{|a,b| b >a ? b : a }
    #words.select{|k,v| v == num }
    words.key(num)

  end
end


# user = UserLogin.new("jay", "pw")
# puts "Give credentials for login"
# puts "Username:"
# username = gets.chomp
#
# puts "Password:"
# password = gets.chomp
#
# user.checkCredentials(username, password)

puts "\nWord Count"
puts "Give me some text and I'll count the words"
text = gets.chomp
print "Word Count: "
puts Countwords.countwords(text)
print Countwords.duplicatewords(text).to_s + " is the most common"
