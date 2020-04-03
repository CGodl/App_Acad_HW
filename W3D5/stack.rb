class Stack
    attr_accessor :store
    def initialize
      @store = Array.new
    end

    def push(el)
      @store.push(el)
    end

    def pop
      @store.pop
    end

    def peek
      @store[-1]
    end
  end





