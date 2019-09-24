class Tree
    def self.to_tree(board, player)
      tree = []
      board.each_with_index do |position, i|
        next_children = []
        if position == ' '
          temp_board = board.dup
          if player == true
            temp_board[i] = 'X' 
          else
            temp_board[i] = 'O'
          end
          if !is_win?(temp_board)
            next_children = to_tree(temp_board, !player)
            score = 0
          else
            if player == true
              score = -100
            else
              score = 100
            end
          end
          tree << { position: i+1, children: next_children, score: score }
        end
      end
      tree
    end
    def self.is_win?(board)
      @winning_combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
      condition = false
      @winning_combinations.each do |i|
        if (board[i[0]] == board[i[1]] && board[i[1]] == board[i[2]] && board[i[2]] != ' ')
          condition = true
        end
      end
      condition
    end
    end