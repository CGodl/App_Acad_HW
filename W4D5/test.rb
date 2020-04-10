require "byebug"

def dominant_octopus(array, &prc)
  prc ||= Proc.new {|a, b| a.length <=> b.length}
  return array if array.length <= 1
  #debugger
  mid = array.length / 2
  p mid
  left_so = dominant_octopus(array[0...mid], &prc)
  right_so = dominant_octopus(array[mid..-1], &prc)

  ans = dom_helper(left_so, right_so, &prc)
  return ans.last
end


def dom_helper(left, right, &prc)
  merged = []
  
  until left.empty? || right.empty?
    case prc.call(left.first, right.first)
    when -1
      merged << left.first
    when 0
      merged << right.first
    when 1
      merged << right.first
    end
  end
 
  merged + left + right
end

p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
