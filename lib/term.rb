class Term

  attr_accessor :word, :definition

  @@all_terms = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
  end

  define_singleton_method(:all) do
    @@all_terms
  end

  define_method(:save) do
    @@all_terms.push(self)
  end

end
