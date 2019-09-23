class Trees
    attr_accessor :board

    def initialize(board)
        @board = board
    end

    def generate
        
        empty_cells = get_cells(@board)
        empty_cells.each do |cell|

        #if only one position, return position
        
        # else RECURSIONONON

        end

        [{position: empty_cells[0]+1, children: [], score: 0}]
    end

    def get_cells(board)
        board.each_index.select{|i| board[i] == ' '}
    end

end