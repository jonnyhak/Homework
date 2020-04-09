require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Adina") }
  subject(:pie) {Dessert.new('pie', 24, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(pie.type).to eq('pie')
    end
    it "sets a quantity" do
      expect(pie.quantity).to eq(24)
    end
    it "starts ingredients as an empty array" do 
      expect(pie.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do 
      expect { Dessert.new('pie','ten', chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do 
      pie.add_ingredient("sugar")
      expect(pie.ingredients).to include("sugar")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      pie.eat(4)
      expect(pie.quantity).to eq(20)
    end


    it "raises an error if the amount is greater than the quantity" do
      expect { pie.eat(36) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do

    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      
    end
  end
end
