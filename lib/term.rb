class Term

  attr_accessor :word, :definition

  @@all_terms = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
  end


end
