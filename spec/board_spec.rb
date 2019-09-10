require "board"

describe Board do

    it "initialises empty board" do
        game = Board.new
        expect(game.board).to eq([' ',' ',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Player makes moves in cell 1" do
        game = Board.new
        player_input = 1
        game.update_board(player_input)
        expect(game.board).to eq(['X',' ',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Player makes move in cell 2" do
        game = Board.new
        player_input = 2
        game.update_board(player_input)
        expect(game.board).to eq([' ','X',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Player moves in cell 2, AI in cell 1" do
        game = Board.new
        player_input = 2
        ai_input = 1
        game.update_board(player_input)
        game.update_board(ai_input)
        expect(game.board).to eq(['O','X',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Test Player cannot mark a marked cell" do
        game = Board.new
        player_input = 3
        game.update_board(player_input)
        ai_input = 1
        game.update_board(ai_input)
        player_input = 1
        game.update_board(player_input)
        expect(game.update_board(player_input)).to eq("This is an exception")
    end

    it "Prints empty board out" do 
        game = Board.new 
        expect(game.print_board).to eq(" | | \n | | \n | | ")
    end


    it "Prints board with marks " do 
        game = Board.new
        game.board = ['X',' ',' ',' ',' ',' ',' ',' ',' ']
        expect(game.print_board).to eq("X| | \n | | \n | | ")
    end

    it "Player one wins" do 
        game = Board.new
        player_input = 5
        game.update_board(player_input)
        ai_input = 2
        game.update_board(ai_input)
        player_input = 1
        game.update_board(player_input)
        ai_input = 3
        game.update_board(ai_input)
        player_input = 9
        game.update_board(player_input)
        expect(game.score).to eq("Player 1 wins")
    end

    it "player wins when they have marks in cells 2,5,8" do 
        game = Board.new
        game.board = ['O','X','O',' ',' ',' ',' ','X','O']
        player_input = 5
        game.update_board(player_input)
        expect(game.score).to eq("Player 1 wins")
    end  

    it "player wins when they have marks in cells 1,4,7" do 
        game = Board.new
        game.board = [' ',' ',' ','X','O','O','X',' ',' ']
        player_input = 1
        game.update_board(player_input)
        expect(game.score).to eq("Player 1 wins")
    end

    it "player wins when they have marks in cells 3,6,9" do 
        game = Board.new
        game.board = ['O','O',' ',' ',' ','X',' ',' ','X']
        player_input = 3
        game.update_board(player_input)
        expect(game.score).to eq("Player 1 wins")
    end

    it "AI wins when they have marks in cells 1,4,7" do 
        game = Board.new
        game.board = [' ',' ','X','O',' ',' ','O',' ','X']
        player_input = 2
        game.update_board(player_input)
        ai_input = 1
        game.update_board(ai_input)
        expect(game.score).to eq("Player 1 loses")
    end

   

end