require("rspec")
require("term")

describe(Term) do
  describe("#word") do
    it("takes in the word for a newly created Term object, and returns the word") do
      test_term = Term.new("coffee", ["a delicious caffeinated drink"])
      expect(test_term.word()).to(eq("coffee"))
    end
  end

  describe("#definition") do
    it("takes in a definition for a newly created term object and returns the definition") do
      test_term = Term.new("coffee", ["a delicious caffeinated drink"])
      expect(test_term.definition()).to(eq(["a delicious caffeinated drink"]))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Term.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a Term to the Term class array of all saved terms") do
      test_term = Term.new("game", ["a fun entertainment activity"])
      test_term.save()
      expect(Term.all()).to(eq([test_term]))
    end
  end

  describe(".clear") do
    it("empties out all saved terms from the Term class array") do
      Term.new("game", ["a fun entertainment activity"])
      Term.clear()
      expect(Term.all()).to(eq([]))
    end
  end

  describe(".search") do
    it("takes a word and returns the term if found") do
      test_term_1 = Term.new("coffee", ["a delicious caffeinated drink"])
      test_term_1.save()
      test_term_2 = Term.new("game", ["a fun entertainment activity"])
      test_term_2.save()
      expect(Term.search("coffee")).to(eq(test_term_1))
    end

    it("takes a word and returns nil if the term if found") do
      test_term_1 = Term.new("coffee", ["a delicious caffeinated drink"])
      test_term_1.save()
      test_term_2 = Term.new("game", ["a fun entertainment activity"])
      test_term_2.save()
      expect(Term.search("bottle")).to(eq(nil))
    end
  end

  describe("#add_definition") do
    it("adds a definition to an existing term") do
      term = Term.new("coffee", ["a drink"])
      term.save()
      expect(term.add_definition("a drug")).to(eq(["a drink", "a drug"]))
    end
  end

end
