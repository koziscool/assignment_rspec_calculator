# Your code here

require "calculator"

describe "Calculator without stringify" do 
    
    let( :calculator ) { Calculator.new }

    it "adds integers correctly" do
        expect( calculator.add(2, 2)).to eq(4) 
    end

    it "adds floats correctly" do
        expect( calculator.add(2.0, 3.3)).to be_within(0.1).of(5.3) 
    end
    it "adds negative numbers correctly" do
        expect( calculator.add(-2, 3.3)).to be_within(0.1).of(1.3)
    end
    it "adds negative numbers correctly" do
        expect( calculator.add(-2, -5)).to eq(-7)
    end

    it "subtracts correctly" do
        expect( calculator.subtract(2, 1)).to eq(1) 
    end
    it "subtracts floats correctly" do
        expect( calculator.subtract(2.0, 3.3)).to be_within(0.1).of(-1.3) 
    end
    it "subtracts negative numbers correctly" do
        expect( calculator.subtract(-2, -3.3)).to be_within(0.1).of(1.3)
    end
    it "subtracts negative numbers correctly" do
        expect( calculator.subtract(-2, -5)).to eq(3)
    end
    
    it "multiplies correctly" do
        expect( calculator.multiply(2, 1)).to eq(2) 
    end
    it "multiplies floats correctly" do
        expect( calculator.multiply(2.0, 3.3)).to be_within(0.1).of(6.6) 
    end
    it "multiplies negative numbers correctly" do
        expect( calculator.multiply(-2, 3.3)).to be_within(0.1).of(-6.6)
    end
    it "multiplies negative numbers correctly" do
        expect( calculator.multiply(-2, -5)).to eq(10)
    end

    it "divides 2 positive integers correctly" do
        expect( calculator.divide(2, 1)).to eq(2) 
    end    
    
    it "divides floats correctly" do
        expect( calculator.divide(3.3, 2.0)).to be_within(0.1).of(1.65) 
    end

    it "divides floats to floats correctly" do
        expect( calculator.divide(-2, 3.3)).to be_a( Float )
    end
    
    it "divides negative numbers correctly" do
        expect( calculator.divide(-2, -5)).to eq(0.4)
    end

    it " handles divide by 0 correctly" do    
        expect {
            calculator.divide(10, 0)
        }.to raise_error(ArgumentError)
    end

    it "calculates to positive power correctly" do
        expect( calculator.pow(2, 1)).to eq(2) 
    end
    it "calculates power correctly" do
        expect( calculator.pow(2, 0)).to eq(1)
    end    
   
    it "calculates power correctly" do        
        expect( calculator.pow(3.3, 2.0)).to be_within(0.1).of(10.9) 
    end    
 
    it "calculates square root of perfect square correctly" do
        expect( calculator.sqrt(25)).to eq(5) 
        expect( calculator.sqrt(25)).to be_a(Fixnum) 
    end    
   
    it "calculates square root of imperfect square correctly" do
        expect( calculator.sqrt(10)).to be_within(0.1).of(3.1) 
        expect( calculator.sqrt(10)).to be_a(Float) 
    end

    it "raises error for square root of negative number" do    
        expect {
            calculator.sqrt(-25)
        }.to raise_error(ArgumentError)
    end

    #Memory

    it "saves to memory value assigned" do 
            calculator.memory = 10
            expect( calculator.memory ).to eq(10)
    end

   it "returns memory value assigned" do 
            expect( calculator.memory=10 ).to eq(10)
    end

    it "saves to memory value assigned" do 
            calculator.memory = 10
            calculator.memory
            expect( calculator.memory ).to eq(nil)
    end

end


describe "Calculator with stringify" do 
    let( :calculator ) { Calculator.new(true) }

    it "strigifies" do
        expect( calculator.add(2, 2)).to eq("4") 
    end

end

