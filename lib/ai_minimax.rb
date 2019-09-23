class Minimax

    def self.recursion(cell, total)
        if cell[:children].empty?

            return cell[:score]
        else
            cell[:children].each do |child|
                total += recursion(child, total)
                total -= 1
            end
            total
        end
    end

    def self.best_move(available_cells)
       
        if available_cells[0].empty?
            return nil
        end
        
        available_cells.each do |cell|

            cell[:score] += self.recursion(cell, cell[:score])
        end

        available_cells.max_by {|cells| cells[:score]}[:position]
    end

end