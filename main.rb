require_relative 'lib/ai_input'
require_relative 'lib/user_input'
require_relative 'lib/print_board'
require_relative 'lib/update_board'
require_relative 'lib/check_winner'

class Main
    user = UserInput.new
    ai = AiInput.new
    board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
    someone_has_won = false
    
    print_board = PrintBoard.new(board)

    while someone_has_won == false
        
            # grab user input:
            user_input = user.execute
            # update board:
            board = UpdateBoard.new(board).execute(user_input)
            # print board:
            print print_board.execute(board)

            # check if someone has won 
            check_winner = CheckWinner.new(board)
            if check_winner.execute empty
                someone_has_won = true
            end 
            
            # grab ai input:
            ai_input = ai.execute
            #update board:
            board = board.execute(ai_input)
            # print board:
            print print_board.execute(board)

            # check if someone has won
            check_winner = CheckWinner.new(board)
            if check_winner.execute empty
                someone_has_won = true
            end 
    end  
    
    
end