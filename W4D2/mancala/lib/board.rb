require_relative "player"

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @player1 = Player.new(name1, 1) # assign to 6 store
    @player2 = Player.new(name2, 2) # Assign to 13 store

    @cups = Array.new(14){[]}
    @cups.each.with_index do |cup, idx|
      unless idx == 6 || idx == 13
        cups[idx] << :stone
        cups[idx] << :stone
        cups[idx] << :stone
        cups[idx] << :stone
      end
    end

  end

  def place_stones #See why won't work
    # @cups.each.with_index do |cup, idx|
    #   unless idx == 6 || idx == 13
    #     cups[idx] << :stone
    #     cups[idx] << :stone
    #     cups[idx] << :stone
    #     cups[idx] << :stone
    #   end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if (start_pos > 13 || start_pos < 0)
    raise "Starting cup is empty" if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)
    count = start_pos.dup.length
    start_pos = []
    #TBD
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if ((0..5).all? {|idx| cups[idx].length == 0} || (6..12).all? {|idx| cups[idx].length == 0})
    false
  end

  def winner
    if @cups[6].length > @cups[13].length
      return player1.name1
    elsif @cups[13].length > @cups[6].length
      return player2.name2
    else
      :draw
    end
  end
end
