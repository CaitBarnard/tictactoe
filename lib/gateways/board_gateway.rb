class Gateway
    def initialize(board)
        @board = board
    end

    def save
        @last_saved_board = @board
    end

    def get_board
        @last_saved_board
    end
end
