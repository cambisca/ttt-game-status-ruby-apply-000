# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constan

WIN_COMBINATIONS = [
  [0, 1, 2], #toprow 
  [3, 4, 5], #middlerow
  [6, 7, 8], #bottomrow
  [0, 3, 6], #leftcolumn
  [1, 4, 7], #middlecolumn
  [2, 5, 8], #rightcolumn
  [0, 4, 8], #1diagonal 
  [2, 4, 6] #2diagonal 
  ]
  

def won?(board)
 WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = WIN_COMBINATIONS[0]
   win_index_2 = WIN_COMBINATIONS[1]
   win_index_3 = WIN_COMBINATIONS[2]
   position_1 = board[win_index_1] 
   position_2 = board[win_index_2] 
   position_3 = board[win_index_3] 
   if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
 end
end