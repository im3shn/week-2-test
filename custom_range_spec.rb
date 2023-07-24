require_relative 'custom_range.rb'
require 'rspec'

RSpec.describe CustomRange do

  context "Valid" do
    # Valid tests here
    it "Valid Range" do
      expect(CustomRange.new(1, 50).square_numbers[0])!=Math.sqrt(1).ceil
      end
    it "Valid Range Square number" do
      expect(CustomRange.new(4, 50).square_numbers[0]%1)==Math.sqrt(4).ceil
    end
    end
  context "Invalid" do
    # Invalid tests here
    it "Range cannot be blank" do
      expect(CustomRange.new(nil, 50).square_numbers).to eq('Range cannot be blank')
    end
    it "Range cannot be blank" do
      expect(CustomRange.new(0, 50).square_numbers).to eq('Range cannot be negative / zero')
    end
    it "Range cannot be blank" do
      expect(CustomRange.new(50, 0).square_numbers).to eq('Range cannot be negative / zero')
    end
    it "Range cannot be blank" do
      expect(CustomRange.new(0, 0).square_numbers).to eq('Range cannot be negative / zero')
    end
    it "Range cannot be blank" do
      expect(CustomRange.new(60, 50).square_numbers).to eq('Invalid Range')
    end
  end
  end