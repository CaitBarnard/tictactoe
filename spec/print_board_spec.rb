require 'print_board'
require 'gateways/board_gateway'

describe PrintBoard do 

    it "Prints empty board out" do 
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new(board)
        print_board = PrintBoard.new(gateway)
        expect(print_board.execute).to eq(" | | \n | | \n | | ")
    end


    it "Prints board with marks " do 
        board = ['X',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new(board)
        print_board = PrintBoard.new(gateway)
        expect(print_board.execute).to eq("X| | \n | | \n | | ")
    end

end