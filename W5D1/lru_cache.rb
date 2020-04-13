


  class LRUCache
    def initialize(num)
      @max_size = num
      @cache = Array.new(0)
    end

    def count
      cache.length
      # returns number of elements currently in cache
    end

    def add(el)

      if cache.include?(el)
        cache.delete(el)
        cache.push(el)
      end

      if cache.length < max_size
        cache.shift
        cache.push(el)
      else
        cache.push(el)
      end



      # adds element to cache according to LRU principle
    end

    def show
      print cache
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!
    attr_accessor :cache, :max_size

  end


  # johnny_cache = LRUCache.new(4)

  # johnny_cache.add("I walk the line")
  # johnny_cache.add(5)
  
  # johnny_cache.count # => returns 2
  
  # johnny_cache.add([1,2,3])
  # johnny_cache.add(5)
  # johnny_cache.add(-5)
  # johnny_cache.add({a: 1, b: 2, c: 3})
  # johnny_cache.add([1,2,3,4])
  # johnny_cache.add("I walk the line")
  # johnny_cache.add(:ring_of_fire)
  # johnny_cache.add("I walk the line")
  # johnny_cache.add({a: 1, b: 2, c: 3})
  
  
  # johnny_cache.show