class Term
  attr_reader :definition
  attr_accessor :word

  @@all_terms = []

  define_method(:initialize) do |word, definition|
    @word = word
    @definition = definition
  end

  define_singleton_method(:all) do
    @@all_terms
  end

  define_singleton_method(:clear) do
    @@all_terms = []
  end

  define_method(:save) do
    @@all_terms.push(self)
  end

  define_singleton_method(:search) do |search_word|
    found_term = nil
    @@all_terms.each() do |term|
      if term.word() == search_word
        return found_term = term
      end
    end
    found_term
  end

  define_method(:add_definition) do |new_def|
    @definition.push(new_def)
  end

end
