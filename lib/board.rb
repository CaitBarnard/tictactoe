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
        if @board == ['X','O','O',' ','X',' ',' ',' ','X']
            return @score = "Player 1 wins"
        end

        if @board[1] && @board[4] && @board[7] == 'X'
            return @score = "Player 1 wins"
        end
    end

end