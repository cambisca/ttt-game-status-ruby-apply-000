# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constan

WIN_COMBINATIONS = [
  [0, 1, 2], 
  [3, 4, 5], 
  [6, 7, 8], 
  [0, 3, 6], 
  [1, 4, 7], 
  [2, 5, 8], 
  [0, 4, 8], 
  [2, 4, 6] 
  ]
  


def won?(board)
  WIN_COMBINATIONS.each do |winning_combination|
    win_index_1 = winning_combination[0]
    win_index_2 = winning_combination[1]
    win_index_3 = winning_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
   
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return winning_combination
    end
  end
  return false
end

def full?(board)
  if board.any? {|index| index == nil || index == " "}
    return false
  else
    return true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    return true 
  elsif !won?(board) && !full?(board)
    return false 
  else won?(board)
    return false 
  end
end

def over?(board)
  if won?(board)
    return true
  elsif draw?(board)
    return true 
  elsif full?(board)
    return true 
  end
  
def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end

end