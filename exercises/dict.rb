require 'ruby-dictionary'

class WordChain
  attr_accessor :dictionary
    def initialize
        @dictionary = ["cat", "cot", "cog", "dog"]
    end

    def find_chain(word1, word2)
        chain = []
        range = word1.length - 1
        while word1 != word2
          (0).upto(range).each do |i|
            wordcopy = word1.dup
            wordcopy[i] = word2[i]
            if @dictionary.include?(wordcopy)
              word1 = wordcopy
              chain << wordcopy
              puts wordcopy
            end
          end
      end
    end
end

dictionary = "hey"
my_chain = WordChain.new


puts my_chain.find_chain("cat", "dog")



# cat
# cot
# cog
# dog
