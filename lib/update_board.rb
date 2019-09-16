class UpdateBoard

    def initialize(gateway)
        @gateway = gateway
        @state = true
    end
    
    def execute(position)
        board = @gateway.get_board
        
        if board[position-1] == ' '

            if @state == true 
                board[position-1] = 'X'
            else
                board[position-1] = 'O'
            end
            @state = !@state
            @gateway.save(board)
        else
            return nil
        end
    end

    def check_empty_cell?(position)
        board = @gateway.get_board
        board[position-1] == ' '
    end

    def check_range?(position)
        board = @gateway.get_board
        position < 10 && position > 0
    end
end