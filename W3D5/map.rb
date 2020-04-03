class Map
    attr_accessor :store
    def initialize
        @store = []
    end

    def set(key, value)
        
        @store.each do |ele|
            if ele[0] == key
                raise "Key already set"
            end
        end
        @store << [key, value]
    end

    def get(key)
        @store.each do |ele|
            if ele[0] == key
                return ele
            else
                raise "Key not set"
            end
        end
    end

    def delete(key)
        @store.delete_if {|ele| ele[0] == key}
    end

    def show
        @store.map {|ele| p "#{ele}"}
    end
  end