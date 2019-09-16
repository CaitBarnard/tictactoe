require_relative 'lib/print_board'
require_relative 'lib/update_board'
require_relative 'lib/check_winner'
require_relative 'lib/gateways/board_gateway'
require_relative 'lib/save_board'
require_relative 'lib/get_board'
require_relative 'lib/ui'

class Main

    def initialize
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        @gateway = Gateway.new
        @update_board = UpdateBoard.new(@gateway)
        @check_winner = CheckWinner.new(@gateway)
        @print_board = PrintBoard.new(@gateway)
        @save_board = SaveBoard.new(@gateway)
        @save_board.execute(board)
        @get_board = GetBoard.new(@gateway)
        @ui = UI.new 
    end

    def user_input
        value = gets.chomp.to_i
        if value < 10 && value > 0 && @get_board.execute[value-1] == ' '
            @update_board.execute(value)
        else
            @ui.invalid_input
            user_input
        end
    end

    def ai_input
        value = rand(1..9)
        if value < 10 && value > 0 && @get_board.execute[value-1] == ' '
            @update_board.execute(value)
        else
            ai_input
        end
    end

    def execute
        while @get_board.execute.include? ' '
            @ui.enter_number

            user_input
            # winning logic
            if !@check_winner.execute.empty?
                @print_board.execute
                @ui.player_wins
                return
            end
            # checks board is full or not
            if (@get_board.execute.include?(' ')) == false
                @print_board.execute
                return
            end
            @print_board.execute

            ai_input
            # winning logic
            if !@check_winner.execute.empty?
                @print_board.execute
                @ui.ai_wins
                return
            end
            # check board full or not

            @print_board.execute
            #check win
        end
    end

end

game = Main.new
game.execute