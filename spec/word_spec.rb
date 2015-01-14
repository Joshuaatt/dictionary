require("rspec")
require("word")

describe(Word) do
  describe("#initialize") do
    it("creates a new Word object, and instantiates it with the two " \
    "provided arguments") do
      expect(test_def = Word.new("carrot", "english")).to(eq(test_def))
    end
  end

  describe("#word") do
    it("returns the Word for a newly created Word object") do
      test_def = Word.new("carrot", "english")
      expect(test_def.word()).to(eq("carrot"))
    end
  end

  describe("#language") do
    it("returns the language for a newly created Word object") do
      test_def = Word.new("carrot", "english")
      expect(test_def.language()).to(eq("english"))
    end
  end
end
