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
        @gateway.save
        win_conditions.each do |x|
            if @gateway.get_board[x[0]] == 'X' && @gateway.get_board[x[1]] == 'X' && @gateway.get_board[x[2]] == 'X'
                return @score = "Player 1 wins"
            end
            if @gateway.get_board[x[0]] == 'O' && @gateway.get_board[x[1]] == 'O' && @gateway.get_board[x[2]] == 'O'
                return @score = "Player 1 loses"
            end
        end
    
    end
end


