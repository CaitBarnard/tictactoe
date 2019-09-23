class Trees
    attr_accessor :board

    # win_conditions = [
    #         [0,1,2],
    #         [3,4,5],
    #         [6,7,8],
    #         [0,3,6],
    #         [1,4,7],
    #         [2,5,8],
    #         [0,4,8],
    #         [6,4,2]
    #     ]

    def initialize(board)
        @board = board
    end

    def generate

        empty_cells = get_cells(@board)

        if empty_cells.length == 2
            [{position: empty_cells[0]+1, children: [{position: empty_cells[1]+1, children: [], score: 0}], score: 0},
            {position: empty_cells[1]+1, children: [{position: empty_cells[0]+1, children: [], score: 0}], score: 0}]
        else
            [{position: empty_cells[0]+1, children: [], score: 0}]
        end
    end

    def get_cells(board)
        board.each_index.select{|i| board[i] == ' '}
    end

    # def winning_thing
    #     win_conditions.each do |win_combos|
    #         if @board[win_combos[0]] == 'X' && @board[win_combos[1]] == 'X' && @board[win_combos[2]] == 'X'
    #             # set score of hash to 10
    #         end
    #     end
    # end

end