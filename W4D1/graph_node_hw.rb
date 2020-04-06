require "set"

class GraphNode



    def initialize(val)
        self.val = val
        self.neighbors = []
    end


    def bfs(starting_node, target_value)
        return starting_node if starting_node == target_value
        visited = Set.new()
        queue = [starting_node]
        until queue.empty?
            queue += current.neighbors
            current = queue.shift
            return current if current.value == value else visited += current
        end
        nil

    end
  

end


a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

bfs(a, "b")