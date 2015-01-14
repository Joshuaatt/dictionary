class Word

  attr_reader :word, :language

 define_method(:initialize) do |word, language|
   @word = word
   @language = language
 end

end
