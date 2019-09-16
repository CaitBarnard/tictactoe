require 'update_board'
require 'gateways/board_gateway'
require 'save_board'

describe UpdateBoard do

    it "Player makes moves in cell 1" do
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        update_board = UpdateBoard.new(gateway)
        player_input = 1
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        expect(update_board.execute(player_input)).to eq(['X',' ',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Player makes move in cell 2" do
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        update_board = UpdateBoard.new(gateway)
        player_input = 2
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        expect(update_board.execute(player_input)).to eq([' ','X',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Player moves in cell 2, AI in cell 1" do
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        update_board = UpdateBoard.new(gateway)
        player_input = 2
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        update_board.execute(player_input)
        ai_input = 1
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        expect(update_board.execute(ai_input)).to eq(['O','X',' ',' ',' ',' ',' ',' ',' '])
    end

    it "Test Player cannot mark a marked cell" do
        board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
        gateway = Gateway.new
        update_board = UpdateBoard.new(gateway)
        player_input = 3
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        update_board.execute(player_input)
        ai_input = 1
        save_board = SaveBoard.new(gateway)
        save_board.execute(board)
        update_board.execute(ai_input)
        player_input = 1
        expect(update_board.execute(player_input)).to eq(nil)
    end

end