require("rspec")
require("definition")

describe(Definition) do
  describe("#initialize") do
    it("creates a new Definition object, and instantiates it with the two " \
      "provided arguments") do
      expect(test_def = Definition.new("a delicious vegetable", "english")).to(eq(test_def))
    end
  end

  describe("#definition") do
    it("returns the definition for a newly created Definition object") do
      test_def = Definition.new("a delicious vegetable", "english")
      expect(test_def.definition()).to(eq("a delicious vegetable"))
    end
  end

  describe("#language") do
    it("returns the language for a newly created Definition object") do
      test_def = Definition.new("a delicious vegetable", "english")
      expect(test_def.language()).to(eq("english"))
    end
  end
end
