# # Your code goes here!
# class Anagram
#     attr_accessor :detector :anagrams
    
#     def intialize
#         @detector=detector
#         @anagrams=anagrams
#     end
    
#     def detector



#     def anagrams
#         @anagrams=[]
#     end
class Anagram < Struct.new(:initial_word)
    def match words
      words.select do |word|
        self.class.anagrams?(initial_word.downcase, word.downcase)
      end
    end
  
    def self.anagrams? a, b
      a != b and a.chars.sort == b.chars.sort
    end
  end