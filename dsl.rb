require_relative "stack"

module StackDSL
    def self.create_stack (&block)
        stack = Stack.new
        stack.instance_eval(&block)
    end
end
