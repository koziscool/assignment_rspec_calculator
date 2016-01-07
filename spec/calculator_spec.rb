# Your code here

require "calculator"

describe "add" do 
    
    let( :calculator ) { Calculator.new }

    it "adds correctly" do
        expect( calculator.add(2, 2)).to eq(4) 
        expect( calculator.add(2.0, 3.3)).to be_within(0.1).of(5.3) 
        expect( calculator.add(-2, 3.3)).to be_within(0.1).of(1.3)
        expect( calculator.add(-2, -5)).to eq(-7)
    end

    it "subtracts correctly" do
        expect( calculator.subtract(2, 1)).to eq(1) 
        expect( calculator.subtract(2.0, 3.3)).to be_within(0.1).of(-1.3) 
        expect( calculator.subtract(-2, 3.3)).to be_within(0.1).of(-5.3)
        expect( calculator.subtract(-2, -5)).to eq(3)
    end
    
    it "multiplies correctly" do
        expect( calculator.multiply(2, 1)).to eq(2) 
        expect( calculator.multiply(2.0, 3.3)).to be_within(0.1).of(6.6) 
        expect( calculator.multiply(-2, 3.3)).to be_within(0.1).of(-6.6)
        expect( calculator.multiply(-2, -5)).to eq(10)
    end

    it "divides correctly" do
        expect( calculator.divide(2, 1)).to eq(2) 
        expect( calculator.divide(3.3, 2.0)).to be_within(0.1).of(1.65) 
        expect( calculator.divide(-2, 3.3)).to be_within(0.1).of(-0.6)
        expect( calculator.divide(-2, -5)).to eq(0.4)
    end

 

end


