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
    if win_combination == WIN_COMBINATIONS[0] || win_combination == WIN_COMBINATIONS[1] || win_combination == WIN_COMBINATIONS[2] || win_combination == WIN_COMBINATIONS[3] || win_combination == WIN_COMBINATIONS[4] || win_combination == WIN_COMBINATIONS[5] || win_combination == WIN_COMBINATIONS[6] || win_combination == WIN_COMBINATIONS[7] || win_combination == WIN_COMBINATIONS[8] 
      return true 
    else 
      return false 

  end
end