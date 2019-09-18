class Minimax


    def self.best_move(available_cells)
       
        if available_cells[0].empty?
            return nil
        end
        
        available_cells.each do |cell|
            if cell[:children].empty? == false 

                cell[:children].each do |childrens|
                    if childrens[:children].empty? == false
                        best_score = childrens[:children].max_by {|childs|childs[:score]}[:score]
                        best_score -= 1
                        childrens[:score] = best_score


                        puts childrens[:score][]
                    end
                end

                best_score = cell[:children].max_by {|childs| childs[:score]}[:score]
                best_score -= 1
                cell[:score] += best_score


                
            end
        end
        available_cells.max_by {|cells| cells[:score]}[:position]
    end
end