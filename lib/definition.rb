class Definition

  attr_reader :definition, :language

  define_method(:initialize) do |definition, language|
    @definition = definition
    @language = language
  end

end
