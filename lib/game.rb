require 'update_board'
require 'check_winner'
require 'print_board'
require 'gateways/board_gateway'

class Game

    def initalize
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        @gateway = Gateway.new(board)
        @update_board = UpdateBoard.new(@gateway)
        @check_winner = CheckWinner.new(@gateway)
        @print_board = PrintBoard.new(@gateway)
    end
    
end