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
end