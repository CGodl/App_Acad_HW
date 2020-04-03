class Queue
    attr_accessor :store
    def initialize
        @store = Array.new
    end

    def enqueue(el)
        @store.unshift(el)
    end

    def dequeue
        @store.shift
    end

    def peek
        @store[0]
    end

end