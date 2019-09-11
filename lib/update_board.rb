class UpdateBoard

    def initialize(gateway)
        @gateway = gateway
        @state = true
    end
    
    def execute(position)
        @gateway.save
        
        if @gateway.get_board[position-1] == ' '

            if @state == true 
                @gateway.get_board[position-1] = 'X'
            else
                @gateway.get_board[position-1] = 'O'
            end
            @state = !@state
            @gateway.save
        else 
            return nil
            # either quit whole game, 
            #or make the player have another go
        end
    end
end