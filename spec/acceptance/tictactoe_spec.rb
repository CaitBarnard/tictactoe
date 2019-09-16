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

    it "updates board with player input" do 
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        update_board = UpdateBoard.new(gateway)
        expect(update_board.execute(1)).to eq(['X',' ',' ',' ',' ',' ',' ',' ',' '])
    end


end