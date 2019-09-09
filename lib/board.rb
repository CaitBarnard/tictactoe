class Board
    attr_accessor :board

    def initialize(gateway)
        @gateway = gateway
        @board = ['','','','','','','','','']
    end
    
    def execute(player_input)
        @board[player_input-1] = 'X'
        @board
    end

    def print_board
        puts " 1 | 2 | 3 "
        puts " ----------"
        puts " 4 | 5 | 6 "
        puts " ----------"
        puts " 7 | 8 | 9 \n\n"
    end

end