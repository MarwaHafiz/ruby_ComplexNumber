class ComplexNumber
    def initialize(real,imag)
        @real = real
        @imag = imag
    end
    def addComp(real,imag)
        @real = @real + real
        @imag = @imag + imag
        compNum = @real.to_s
        compNum.concat("+",@imag.to_s)
        compNum.concat("i")
        puts compNum
    end
    def multiComp(real,imag)
        # (2+3i)*(4+5i) = 23+22i
        realNew = (@real * real) + (@imag * imag)
        imagNew = (@imag * real) + (@real * imag)
        @real = realNew
        @imag = imagNew
        compNum = @real.to_s
        compNum.concat("+",@imag.to_s)
        compNum.concat("i")
        puts compNum
    end
    def self.addBulk(compArr)
        # compR = compArr
        puts compArr
        
        # compArr.each do |(real,imag)|
            # compR = compR + real
            
        # end
        # compNum = @real.to_s
        # compNum.concat("+",@imag.to_s)
        # compNum.concat("i")
        # puts compNum
    end
end

cp1 = ComplexNumber.new(2,3)
cp2 = ComplexNumber.new(1,2)
# cp3 = ComplexNumber.new(3,1)
# cp1.addComp(4,2)
# cp1.multiComp(4,5)
arr = [cp1,cp2]
puts ComplexNumber.addBulk(arr)