class Queen
  attr_accessor :r, :c, :unicode

  def initialize
    @unicode = "\u265B" #display color as white
    # @unicode = "\u2655" #display color as black
  end

  def can_take_piece?(r, c, game)
    @board = game.board
    @r, @c = r, c
    moves = [asc_left, asc_right, up]
    moves.any? { |m| m == true }
  end

  def asc_right
    r = @r + 1
    c = @c + 1
    while r <= 7 && c <= 7
      return true if @board[r][c].is_a?(Queen)
      c += 1
      r += 1
    end
  end

  def asc_left
    r = @r + 1
    c = @c - 1
    while r <= 7 && c >= 0
      return true if @board[r][c].is_a?(Queen)
      c -= 1
      r += 1
    end
  end

  def desc_left
    r = @r - 1
    c = @c - 1
    while r >= 0 && c >= 0
      return true if @board[r][c].is_a?(Queen)
      c -= 1
      r -= 1
    end
  end

  def desc_right
    r = @r - 1
    c = @c + 1
    while r >= 0 && c <= 7
      return true if @board[r][c].is_a?(Queen)
      c += 1
      r -= 1
    end
  end

  def right
    c = @c + 1
    while c <= 7
      return true if @board[@r][c].is_a?(Queen)
      c += 1
    end
  end

  def left
    c = @c - 1
    while c >= 0
      return true if @board[@r][c].is_a?(Queen)
      c -= 1
    end
  end

  def up
    r = @r + 1
    while r <= 7
      return true if @board[r][@c].is_a?(Queen)
      r += 1
    end
  end

  def down
    r = @r - 1
    while r >= 0
      return true if @board[r][@c].is_a?(Queen)
      r -= 1
    end
  end
end