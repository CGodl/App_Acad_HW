require "byebug"
def sluggish_octopus(array)
  ans = ""
  (0...array.length).each do |i1|
    (0...array.length).each do |i2|
      if i2 > i1
        case array[i1].length <=> array[i2].length
        when 1
          ans = array[i1]
        when -1
          ans = array[i2]
        end
      end
    end
  end
  ans
end

p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

def dominant_octopus(array, &prc)
  prc ||= Proc.new {|a, b| a.length <=> b.length}
  return array if array.length == 1

  mid = array.length / 2
  ans = dom_helper(dominant_octopus(array[0...mid], &prc), dominant_octopus(array[mid..-1], &prc), &prc)
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

#p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])



def clever_octopus(array)
  val = ""
  array.each {|ele| val = ele if ele.length > val.length}
  val
end

p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])



tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(target, array)
  array.each_with_index do |ele, idx|
    if ele == target
      return idx
    end
  end
  p "Not found"
end

p slow_dance("left", tiles_array)

def constant_dance(target, array)
  return array.index(target)
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


p constant_dance("left", tiles_array)
