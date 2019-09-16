class CheckWinner
    
    def initialize(gateway)
        @gateway = gateway
        @score = ""
    end

    def execute
        win_conditions = [
            [0,1,2],
            [3,4,5],
            [6,7,8],
            [0,3,6],
            [1,4,7],
            [2,5,8],
            [0,4,8],
            [6,4,2],
        ]
        board = @gateway.get_board
        win_conditions.each do |x|
            if board[x[0]] == 'X' && board[x[1]] == 'X' && board[x[2]] == 'X'
                return @score = "Player 1 wins"
            end
            if board[x[0]] == 'O' && board[x[1]] == 'O' && board[x[2]] == 'O'
                return @score = "Player 1 loses"
            end
        end
        @score
    end
end


