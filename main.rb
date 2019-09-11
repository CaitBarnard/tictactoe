require_relative 'lib/ai_input'
require_relative 'lib/user_input'
require_relative 'lib/print_board'
require_relative 'lib/update_board'
require_relative 'lib/check_winner'
require_relative 'lib/gateways/board_gateway'

class Main

    def initialize
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        @gateway = Gateway.new(board)
        @update_board = UpdateBoard.new(@gateway)
        @user_input = UserInput.new
    end

    def execute
        puts "Enter a number from 1 to 9:"
        @update_board.execute(@user_input.execute)

        #check win
        #ai input
        #update board, print board
        #check win


    end

end

game = Main.new
game.execute