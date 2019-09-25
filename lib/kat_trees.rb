class Tree
    def self.to_tree(board, player)
      tree = []
      board.each_with_index do |position, i|
        next_child = []
        if position == ' '
          temp_board = board.dup
          if player == true
            temp_board[i] = 'X'
          else
            temp_board[i] = 'O'
          end
          if is_win?(temp_board)
            if player == true
              score = -10
            else
              score = 10
            end
          else
            next_child = to_tree(temp_board, !player)
            score = 0
          end
          tree << { position: i+1, children: next_child, score: score }
        end
      end
      tree
    end
    def self.is_win?(board)
      win_conditions = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]      
    condition = false
      win_conditions.each do |i|
        if (board[i[0]] == board[i[1]] && board[i[1]] == board[i[2]] && board[i[2]] != ' ')
          condition = true
        end
      end
      condition
    end
    end

    #print Tree.to_tree(['X',' ','O',' ','O',' ','X',' ','X'], false)
    #pp Tree.to_tree(['O',' ',' ','X','O',' ','X',' ','X'], false)
    #pp Tree.to_tree(['X',' ','O','X','X','O','O',' ',' '], false)


    