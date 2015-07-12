require "bookclean/version"
require "unicode_utils"

module BookClean
  module Publisher
    def self.clean(str, lang=:pt)
      return str if str==nil
      str=str.rstrip.lstrip
      str = UnicodeUtils.downcase(str)
      str.gsub!(/\s+/, ' ')
      str.gsub!(/\s*ltda.?$/, '')
      
      str.gsub!(/^editora/, '') if !str.match(/^editora\s+..\s+/) #editora da mente should keep editora
      str.gsub!(/editora$/, '')
     
      
      #Split words in tokens
      #Match each token to dictionary of accented words.
      #Join words by space
      str = UnicodeUtils.titlecase(str)
      #Downcase Prepositions
      #Downcase Conjuntions
      #Remove extra space (end, middle and end)
      #Remove editora begin and end.
       
      str.gsub!(" Da ", " da ")
      str.gsub!(" De ", " de ")
      str.gsub!(" Do ", " do ")
      str.gsub!("çao", "ção")
      
      str=str.rstrip.lstrip
    end
  end
end
