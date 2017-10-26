# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], [0,3,6], [0,4,8],
  [3,4,5], [1,4,7], [2,4,6],
  [6,7,8], [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.detect do |i|
  if board[i[0]] == board[i[1]] && board[i[1]] == board[i[2]] && position_taken?(board, win_index[0])
  end
  return false
end
