require 'print_board'
require 'gateways/board_gateway'
require 'save_board'

describe PrintBoard do 

    xit "Prints empty board out" do 
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        print_board = PrintBoard.new(gateway)
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        expect(print_board.execute).to eq(" | | \n | | \n | | ")
    end


    xit "Prints board with marks " do 
        board = ['X',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        print_board = PrintBoard.new(gateway)
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        expect(print_board.execute).to eq("X| | \n | | \n | | ")
    end

end