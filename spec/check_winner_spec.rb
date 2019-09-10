require "check_winner"

describe CheckWinner do

    it "player wins when they have marks in cells 2,5,8" do 
        board = CheckWinner.new(['O','X','O',' ','X',' ',' ','X','O'])
        expect(board.execute).to eq("Player 1 wins")
    end  

    it "player wins when they have marks in cells 1,4,7" do 
        board = CheckWinner.new(['X',' ',' ','X','O','O','X',' ',' '])
        expect(board.execute).to eq("Player 1 wins")
    end

    it "player wins when they have marks in cells 3,6,9" do 
        board = CheckWinner.new(['O','O','X',' ',' ','X',' ',' ','X'])
        expect(board.execute).to eq("Player 1 wins")
    end

    it "AI wins when they have marks in cells 1,4,7" do 
        board = CheckWinner.new(['O','X','X','O',' ',' ','O',' ','X'])
        expect(board.execute).to eq("Player 1 loses")
    end


end