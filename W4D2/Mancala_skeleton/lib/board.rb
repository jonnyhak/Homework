class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = [[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[], 
    [:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[:stone,:stone,:stone,:stone],[]]
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 13
    raise 'Starting cup is empty' if @cups[start_pos] == []
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    while stones.length > 0
      start_pos += 1
      start_pos = 0 if start_pos > 13
      if start_pos == 6
        if current_player_name == @name1
          @cups[6] << stones.pop 
        end
      elsif start_pos == 13
        if current_player_name == @name2
          @cups[13] << stones.pop
        end
      else
        @cups[start_pos] << stones.pop
      end
    end
  
    render
    next_turn(start_pos)
  end

  def next_turn(ending_cup_idx)
    # if ending_cup_idx == 6 || ending_cup_idx == 13
    #   return :prompt
    # elsif @cup[ending_cup_idx].length == 1
    #   return :switch
    # else
    #   ending_cup_idx
    # end
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
    return true if (0..5).all? { |spot| cups[spot].length == 0 }
    return true if (7..12).all? { |spot| cups[spot].length == 0 }
    false
  end

  def winner
    player1_score = @cups[6].length
    player2_score = @cups[13].length

    if player1_score == player2_score
      :draw
    else
      if player1_score > player2_score
        @name1
      else
        @name2
      end
    end
  end
end
