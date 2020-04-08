class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def add_random_color
    color = COLORS.sample
    @seq << color
  end

  def play
    until game_over == true
      take_turn
    end
    game_over_message if game_over == true
    reset_game if game_over == true
  end

  def take_turn
    show_sequence
    require_sequence
    if game_over == false
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence

  end

  def round_success_message
    p "Round successful"
  end

  def game_over_message
    p "Game over"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
