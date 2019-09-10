require "update_board"

describe UpdateBoard do

    it "Player makes moves in cell 1" do
        board = UpdateBoard.new([' ',' ',' ',' ',' ',' ',' ',' ',' '])
        player_input = 1
        expect(board.execute(player_input)).to eq(['X',' ',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Player makes move in cell 2" do
        board = UpdateBoard.new([' ',' ',' ',' ',' ',' ',' ',' ',' '])
        player_input = 2
        expect(board.execute(player_input)).to eq([' ','X',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Player moves in cell 2, AI in cell 1" do
        board = UpdateBoard.new([' ',' ',' ',' ',' ',' ',' ',' ',' '])
        player_input = 2
        board.execute(player_input)
        ai_input = 1
        expect(board.execute(ai_input)).to eq(['O','X',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Test Player cannot mark a marked cell" do
        board = UpdateBoard.new([' ',' ',' ',' ',' ',' ',' ',' ',' '])
        player_input = 3
        board.execute(player_input)
        ai_input = 1
        board.execute(ai_input)
        player_input = 1
        expect(board.execute(player_input)).to eq("This is an exception")
    end

end