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

def won(board)
  WIN_COMBINATIONS.each do |i|
  if ((board[i[0]] == "X" && board[i[1]] == "X" && board[i[2]] == "X") ||
    (board[i[0]] == "O" && board[i[1]] == "O" && board[i[2]] == "O"))
    return i
  end
end
return false
end
