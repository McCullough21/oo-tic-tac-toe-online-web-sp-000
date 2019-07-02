class TicTacToe
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

attr_accessor :board

def initialize(board)
  @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
end

end
