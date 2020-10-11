# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constan

WIN_COMBINATIONS = [
  [0, 1, 2], #toprow 
  [3, 4, 5], #middlerow
  [6, 7, 8], #bottomrow
  [0, 6, 3], #leftcolumn
  [1, 4, 6], #middlecolumn
  [2, 5, 8], #rightcolumn
  [0, 4, 8], #1diagonal 
  [2, 4, 8] #2diagonal 
  ]