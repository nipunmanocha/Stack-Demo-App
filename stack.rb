class Stack
    def initialize
        @arr = []
    end

    def push (val)
        @arr << val
    end

    def pop
        raise "Stack is empty" if @arr.empty?
        element = @arr.pop
    end

    def print
        puts "Current state of the stack is #{@arr}"
    end

    def math_operation
        if @arr.length > 1
            first = pop
            second = pop
            push(yield(first, second))
        else
            raise "Stack has less than 2 elements"
        end
    end

    def add
        math_operation {|first, second| first + second}
    end

    def subtract
        math_operation {|first, second| first - second}
    end

    def multiply
        math_operation {|first, second| first * second}
    end

    def divide
        math_operation {|first, second| first / second}
    end
end
