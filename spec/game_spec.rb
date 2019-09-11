require "game"
require 'update_board'
require 'check_winner'
require 'print_board'
require 'gateways/board_gateway'

describe Game do 

    xit "should update the board" do
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        game = Game.new
        user_input = 2
        update_board = UpdateBoard.new(board)
        expect(update_board.execute(user_input)).to eq([' ','X',' ',' ',' ',' ',' ',' ',' '])
    end

end