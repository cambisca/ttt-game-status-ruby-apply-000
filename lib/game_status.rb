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
    if win_combination == WIN_COMBINATIONS[0] ||

  end
end