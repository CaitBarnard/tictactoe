class Board
    attr_accessor :board, :state, :score

    def initialize
        @board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        @state = true
        @score = ""
    end

    def update_board(position)
        
        if @board[position-1] == ' '

            if @state == true 
                @board[position-1] = 'X'
            else
                @board[position-1] = 'O'
            end
            check_if_win
            @state = !@state
            @board
        else 
            return "This is an exception"
        end
        
    end

    def print_board
         "#{@board[0]}|#{@board[1]}|#{@board[2]}\n#{@board[3]}|#{@board[4]}|#{@board[5]}\n#{@board[6]}|#{@board[7]}|#{@board[8]}"
    end

    def check_if_win
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

        win_conditions.each do |x|
            if @board[x[0]] == 'X' && @board[x[1]] == 'X' && @board[x[2]] == 'X'
                return @score = "Player 1 wins"
            end
        end

        win_conditions.each do |x|
            if @board[x[0]] == 'O' && @board[x[1]] == 'O' && @board[x[2]] == 'O'
                return @score = "Player 1 loses"
            end
        end
    end

end