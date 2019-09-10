class PrintBoard

    def initialize(board) 
        @board = board
    end

    def execute
        # print "\n\n#{@board[0]}|#{@board[1]}|#{@board[2]}\n#{@board[3]}|#{@board[4]}|#{@board[5]}\n#{@board[6]}|#{@board[7]}|#{@board[8]}"
        "#{@board[0]}|#{@board[1]}|#{@board[2]}\n#{@board[3]}|#{@board[4]}|#{@board[5]}\n#{@board[6]}|#{@board[7]}|#{@board[8]}"
    end

end