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
end

acalculator = MyCalc.new

runningCalc = true
while runningCalc do
    puts "Please input a basic math problem:\nFormat: [num] [symbol] [num]"
    inAry = gets.chomp.split
    if inAry.length != 3 then
        puts "Please use the proper format"
    end

    if !["+", "-", "*", "/", "%"].include?(inAry[1]) then
        puts "Invalid computation symbol.\nValid symbols: + - * / %"
    end

    firstVar = inAry[0].to_i
    secondVar = inAry[2].to_i

    outAnswer = 0

    case inAry[1]
    when "+"
        outAnswer = acalculator.get_sum(firstVar, secondVar)
    when "-"
        outAnswer = acalculator.get_diff(firstVar, secondVar)
    when "*"
        outAnswer = acalculator.get_mul(firstVar, secondVar)
    when "%"
        outAnswer = acalculator.get_mod(firstVar, secondVar)
    end

    puts "Your answer: #{outAnswer}\n\nAgain? [y/any]"
    if gets.chomp.downcase != "y" then
        runningCalc = false
    end
end