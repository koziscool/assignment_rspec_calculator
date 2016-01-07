# Your code here

require "calculator"

describe "Calculator without stringify" do 
    
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

    it "divides 2 positive integers correctly" do
        expect( calculator.divide(2, 1)).to eq(2) 
    end    
    
    it "divides correctly" do
        expect( calculator.divide(3.3, 2.0)).to be_within(0.1).of(1.65) 
    end

    it "calculates power correctly" do
        expect( calculator.divide(-2, 3.3)).to be_within(0.1).of(-0.6)
    end
    
    it "calculates power correctly" do    
        expect( calculator.divide(-2, -5)).to eq(0.4)
    end

    it "divides by 0 correctly" do    
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
    it "calculates power correctly" do        
        expect( calculator.pow(-2, 3)).to be_within(0.1).of(-8)
    end    
    it "calculates power correctly" do        
        expect( calculator.pow(-5, 2)).to eq(25)
    end

    it "calculates square root of perfect square correctly" do
        expect( calculator.sqrt(25)).to eq(5) 
    end    
   
    it "calculates square root of imperfect square correctly" do
        expect( calculator.sqrt(10)).to be_within(0.1).of(3.1) 
    end

    it "raises error for square root of negative number" do    
        expect {
            calculator.sqrt(-25)
        }.to raise_error(ArgumentError)
    end

    #Memory

    # it "saves to memory value assigned" do 
    #     #x = 10  
    #     #calculator.memory = x
    #     expect( calculator.mem=10).to be_eq(10)
    # end
end


describe "Calculator with stringify" do 
    let( :calculator ) { Calculator.new(true) }

    it "strigifies" do
        expect( calculator.add(2, 2)).to eq("4") 
    end

end

