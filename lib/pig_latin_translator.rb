class PigLatinTranslator

  def translate(word)
    if /y/.match(word[0])
      return word[1,word.length] + "yay"
    elsif word.include?("y")
      return word[word.index("y"),word.length] + word[0,word.index("y")] + "ay"
    elsif /[aeiou]/.match(word[0])
      return word + "way"
    elsif
      return + "ay"


    end
  end
end


