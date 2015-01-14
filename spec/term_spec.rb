require("rspec")
require("term")

describe(Term) do
  describe("#word") do
    it("takes in the word for a newly created Term object, and returns the word") do
      test_term = Term.new("coffee", "a delicious caffeinated drink")
      expect(test_term.word()).to(eq("coffee"))
    end
  end

  describe("#definition") do
    it("takes in a definition for a newly created term object and returns the definition") do
      test_term = Term.new("coffee", "a delicious caffeinated drink")
      expect(test_term.definition()).to(eq("a delicious caffeinated drink"))
    end
  end
end
