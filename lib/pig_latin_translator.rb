class PigLatinTranslator

  def translate(word)
    if/y/.match(word[0])
      word.push(word.shift(word[0]))
    end
  end
end


