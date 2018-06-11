class MyCalc
    def get_sum(valA, valB)
        return valA + valB
    end

    def get_diff(valA, valB)
        return valA - valB
    end

    def get_mul(valA, valB)
        return valA * valB
    end

    def get_div(valA, valB)
        return valA / valB
    end

    def get_mod(valA, valB)
        return valA % valB
    end

    def eval(expr)
        inAry = expr.split
        if inAry.length != 3 then
            puts "Please use the proper format"
            return false
        end
    
        if !["+", "-", "*", "/", "%"].include?(inAry[1]) then
            puts "Invalid expression symbol.\nValid symbols: + - * / %"
            return false
        end
    
        firstVar = inAry[0].to_i
        secondVar = inAry[2].to_i
    
        outAnswer = 0
    
        case inAry[1]
        when "+"
            outAnswer = get_sum(firstVar, secondVar)
        when "-"
            outAnswer = get_diff(firstVar, secondVar)
        when "*"
            outAnswer = get_mul(firstVar, secondVar)
        when "%"
            outAnswer = get_mod(firstVar, secondVar)
        end

        return outAnswer
    end
end

acalculator = MyCalc.new

runningCalc = true
while runningCalc do
    puts "Please input a basic math problem:\nFormat: [num] [symbol] [num]"
    rval = acalculator.eval(gets.chomp)

    if(rval != false) then
        puts "Your answer: #{rval}\n\n"
    else
    end
    puts "Again? [y/any]"
    if gets.chomp.downcase != "y" then
        runningCalc = false
    end
end