require_relative 'lib/print_board'
require_relative 'lib/update_board'
require_relative 'lib/check_winner'
require_relative 'lib/gateways/board_gateway'
require_relative 'lib/save_board'
require_relative 'lib/get_board'
require_relative 'lib/kat_trees'
require_relative 'lib/ai_minimax'
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
        position = gets.chomp.to_i
        if @update_board.check_range?(position) && @update_board.check_empty_cell?(position)
            @update_board.execute(position)
        else
            @ui.invalid_input
            user_input
        end
    end

    def ai_input
        board = @get_board.execute
        tree = Tree.to_tree(board, false)
        position = Minimax.best_move(tree)
        @update_board.execute(position)
    end

    def execute
        while @get_board.execute.include? ' '
            @ui.enter_number

            user_input

            if !@check_winner.execute.empty?
                @print_board.execute
                @ui.player_wins
                return
            end

            if (@get_board.execute.include?(' ')) == false
                @print_board.execute
                @ui.draw
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

            @print_board.execute
        end
    end

end

game = Main.new
game.execute


# Known failures
# ['X', 'O', 'X', ' ', 'O', ' ', 'O', 'X', 'X']
# chooses 4 over 6, giving player a win

# [' ','X',' ','X','O','X','O','O','X']
# Chooses 1 over 3, avoiding a win and gives player a win

# [' ','X',' ',' ','X','X',' ','O','O']
# Chooses 4 over 7, avoiding a win and blocking player


# Changed line 37 to false