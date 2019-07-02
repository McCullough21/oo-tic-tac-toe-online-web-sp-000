class TicTacToe
WIN_COMBINATIONS = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

attr_accessor :board

def initialize(board = nil)
  @board = board || Array.new(9, " ")
end

def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
def input_to_index(input)
  @index = input.to_i - 1
end
def move(index, player)
  @board[index] = player
end
def position_taken?(index)
  @board[index] == "X" || @board[index] == "O"
end
def valid_move?(index)
  !position_taken?(index) && index.between?(0, 8)
end
def turn_count
  @count = 0
  @board.each do |space|
    if space == "X" || space == "O"
      @count += 1
    end
  end
  @count
end
# def turn(board)
#   puts "Please enter 1-9:"
#   input = gets.strip
#   index = input_to_index(input)
#   if valid_move?(index)
#     move(index, current_player(board))
#   else turn(board)
#   end
#   display_board(board)
# end
#
# def play(board)
#    until over?(board)
#     turn(board)
#    end
#      if draw?(board)
#        puts "Cat's Game!"
#      elsif winner(board)
#        puts "Congratulations #{winner(board)}!"
#      end
# end
# def current_player(board)
#   if turn_count(board) % 2 == 0
#     "X"
#   else
#     "O"
#   end
# end
#
# def full?(board)
#   board.all? do |space|
#     space == "X" || space == "O"
#   end
# end
#
# def draw?(board)
#   full?(board) && !won?(board)
# end
#
# def over?(board)
#   won?(board) || full?(board) || draw?(board)
# end
#
# def winner(board)
#     if won?(board)
#        board[won?(board)[1]]
#     end
# end



end
