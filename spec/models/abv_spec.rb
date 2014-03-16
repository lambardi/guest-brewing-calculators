require 'spec_helper'

describe Abv do
  before(:each) do
    @calculator = Abv.new
    @calculator.og = 1.05
    @calculator.fg = 1.01
  end
  
  describe 'abv' do
    it 'should store og and fg' do
        expect(@calculator.fg).to eq 1.01
    end
    
    it 'should calculate abv' do
      expect(@calculator.abv).to eq 5.339411100495098
    end
    
    it 'should calculate abv' do
      @emptyCalculator = Abv.new
      expect(@emptyCalculator.abv).to eq 0
    end
    
    it 'should create a new ABV from params' do 
      @calculator = Abv.new
      @calculator.update(1.05, 1.01)
      expect(@calculator.og).to eq 1.05
    end
  end
end
