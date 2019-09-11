require_relative 'lib/print_board'
require_relative 'lib/update_board'
require_relative 'lib/check_winner'
require_relative 'lib/gateways/board_gateway'

class Main

    def initialize
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        @gateway = Gateway.new(board)
        @update_board = UpdateBoard.new(@gateway)
        @check_winner = CheckWinner.new(@gateway)
        @print_board = PrintBoard.new(@gateway)
    end

    def user_input
        value = gets.chomp.to_i
        if value < 10 && value > 0 && @gateway.get_board[value-1] == ' '
            @update_board.execute(value)
        else
            print "Not a valid mark/cell\n"
            user_input
        end
    end

    def ai_input
        value = rand(1..9)
        if value < 10 && value > 0 && @gateway.get_board[value-1] == ' '
            @update_board.execute(value)

        else
            ai_input
        end
    end

    def execute
        @gateway.save
        while @gateway.get_board.include? ' '
            puts "Enter a number from 1 to 9:"

            user_input
            # winning logic
            if !@check_winner.execute.empty?
                @print_board.execute
                puts "Player 1 wins"
                return "Player 1 wins"
            end
            # checks board is full or not
            if (@gateway.get_board.include?(' ')) == false
                @print_board.execute
                puts "Game is a draw"
                return "this is the exit"
            end
            @print_board.execute

            ai_input
            # winning logic
            if !@check_winner.execute.empty?
                @print_board.execute
                puts "Player 2 wins"
                return "Player 2 wins"
            end
            # check board full or not

            @print_board.execute
            #check win
        end
    end

end

game = Main.new
game.execute