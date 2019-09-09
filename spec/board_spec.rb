require "board"

describe Board do
    class Gateway
        attr_accessor :position_on_board
        def initialize(position_on_board)
            @position_on_board = position_on_board
        end

        def get_player_position
            @position_on_board -1
        end

    end

    it "initialises empty board" do
        ai_gateway = Gateway.new(1)
        game = Board.new(ai_gateway)
        expect(game.board).to eq(['','','','','','','','',''])
    end

    it "Player makes moves in cell 1" do
        ai_gateway = Gateway.new(1)
        player_input = gets.chomp.to_i
        game = Board.new(ai_gateway)
        expect(game.execute(player_input)).to eq(['X','','','','','','','',''])
    end

    it "Player makes move in cell 2" do
        ai_gateway = Gateway.new(2)
        player_input = gets.chomp.to_i
        game = Board.new(ai_gateway)
        expect(game.execute(player_input)).to eq(['','X','','','','','','',''])
    end

    xit "AI makes a move in cell 3" do
        ai_gateway = Gateway.new(1)
        game = Board.new
        expect(game.execute({})).to eq(['O','X','','','','','','',''])
    end

end