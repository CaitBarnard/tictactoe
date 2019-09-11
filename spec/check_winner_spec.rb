require "check_winner"
require "gateways/board_gateway"

describe CheckWinner do

    it "player wins when they have marks in cells 2,5,8" do 
        board = ['O','X','O',' ','X',' ',' ','X','O']
        gateway = Gateway.new(board)
        check_winner = CheckWinner.new(gateway)
        expect(check_winner.execute).to eq("Player 1 wins")
    end  

    it "player wins when they have marks in cells 1,4,7" do
        board = ['X',' ',' ','X','O','O','X',' ',' ']
        gateway = Gateway.new(board)
        check_winner = CheckWinner.new(gateway)
        expect(check_winner.execute).to eq("Player 1 wins")
    end

    it "player wins when they have marks in cells 3,6,9" do
        board = ['O','O','X',' ',' ','X',' ',' ','X']
        gateway = Gateway.new(board)
        check_winner = CheckWinner.new(gateway)
        expect(check_winner.execute).to eq("Player 1 wins")
    end

    it "AI wins when they have marks in cells 1,4,7" do
        board = ['O','X','X','O',' ',' ','O',' ','X']
        gateway = Gateway.new(board)
        check_winner = CheckWinner.new(gateway)
        expect(check_winner.execute).to eq("Player 1 loses")
    end


end