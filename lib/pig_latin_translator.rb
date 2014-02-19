class PigLatinTranslator

  def translate(word)
    if /y/.match(word[0])
      return word[1,word.length] + "yay"
    elsif word.include?("y")
      return word[word.index("y"),word.length] + word[0,word.index("y")] + "ay"
    elsif /[aeiou]/.match(word[0])
      return word + "way"
    elsif /[^aeiou]/.match(word[0])
      return word[word.index(/[aeiou]/),word.length] + word[0,word.index(/[aeiou]/)] + "ay"
    end
  end
end


