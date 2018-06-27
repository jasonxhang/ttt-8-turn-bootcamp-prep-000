def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, char = "X")
  board[index] = char
end

def position_taken?(board, index) 
  if board[index] == " " || board[index] == "" || board[index] == NIL
    return false 
  elsif board[index] == "X" || board[index] == "O"
    return true 
  end
end

def valid_move?(board, index)
  if position_taken?(board,index) == false && index.between?(0,8) == true
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
<<<<<<< HEAD
    if valid_move?(board, index) == true 
      move(board, index, char = "X")
    else 
      turn(board)
=======
  
  until input == true
    if valid_move?(board, index) == true 
      move(board, index, char = "X")
    else input = gets.strip
    end
>>>>>>> 84e619b5512f8b0daa18b86643b0502ff40561b3
  end
  display_board(board)
end