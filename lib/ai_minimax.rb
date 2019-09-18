class Minimax

    def self.best_move(available_cells)
       
        if available_cells[0].empty?
            return nil
        end
        
        available_cells.each do |cell|

            if cell[:children].empty? == false

                cell[:children].each do |childrens|

                    if childrens[:children].empty? == false

                        grand_kids_total = 0
                        
                            childrens[:children].each do |grandkids|
                                grand_kids_total += (grandkids[:score]-1) 
                            end

                        childrens[:score] += grand_kids_total
                    end

                    childrens[:score] -= 1
                    cell[:score]+=childrens[:score]
                end

            end
            puts cell[:score]
        end
        available_cells.max_by {|cells| cells[:score]}[:position]
    end
end