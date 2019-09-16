class PrintBoard

    def initialize(gateway) 
        @gateway = gateway
    end

    def execute
        print "\n\n#{@gateway.get_board[0]}|#{@gateway.get_board[1]}|#{@gateway.get_board[2]}\n-----\n#{@gateway.get_board[3]}|#{@gateway.get_board[4]}|#{@gateway.get_board[5]}\n-----\n#{@gateway.get_board[6]}|#{@gateway.get_board[7]}|#{@gateway.get_board[8]}\n"
        "#{@gateway.get_board[0]}|#{@gateway.get_board[1]}|#{@gateway.get_board[2]}\n#{@gateway.get_board[3]}|#{@gateway.get_board[4]}|#{@gateway.get_board[5]}\n#{@gateway.get_board[6]}|#{@gateway.get_board[7]}|#{@gateway.get_board[8]}"
    end

end