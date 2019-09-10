require 'print_board'

describe PrintBoard do 

    it "Prints empty board out" do 
        board = PrintBoard.new([' ',' ',' ',' ',' ',' ',' ',' ',' '])
        expect(board.execute).to eq(" | | \n | | \n | | ")
    end


    it "Prints board with marks " do 
        board = PrintBoard.new(['X',' ',' ',' ',' ',' ',' ',' ',' '])
        expect(board.execute).to eq("X| | \n | | \n | | ")
    end

end