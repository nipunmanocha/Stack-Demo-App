require_relative "dsl"

StackDSL.create_stack do
    push 2
    # puts pop
    # puts pop
    push 3
    push 6

    print

    add
    print
    add
    print

    add
    print

    # push 2
    # push 3
    # push 6
    # push 2
    # push 3
    # push 6
    # push 2
    # push 3
    # push 6
    
    # subtract
    # multiply
    # multiply
    # multiply
    # divide
    # subtract
end
