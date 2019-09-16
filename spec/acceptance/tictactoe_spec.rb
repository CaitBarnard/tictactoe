require 'update_board'
require 'save_board'
require 'check_winner'
require 'print_board'
require 'gateways/board_gateway'

describe "tictactoe" do

    it "starts a new game" do
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        save_board = SaveBoard.new(gateway)
        expect(save_board.execute(board)).to eq(board)
    end
end