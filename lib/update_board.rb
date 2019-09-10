class UpdateBoard

    def initialize(board)
        @board = board
        @state = true
    end
    
    def execute(position) 
        
        if @board[position-1] == ' '

            if @state == true 
                @board[position-1] = 'X'
            else
                @board[position-1] = 'O'
            end
            @state = !@state
            @board
        else 
            return "This is an exception"
        end

    end
end