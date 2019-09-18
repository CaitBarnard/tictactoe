class Minimax


    def self.best_move(available_cells)
       
        if available_cells[0].empty?
            return nil
        end
        
        available_cells.each do |cell|

            total = 0
            if cell[:children].empty? == false

                children_total = 0
                cell[:children].each do |childrens|

                    if childrens[:children].empty? == false
                        grand_kids_total = 0

                            childrens[:children].each do |grandkids|
                                grand_kids_total += (grandkids[:score]-1) 
                            end

                        children_total += (childrens[:score]-1)
                        children_total += grand_kids_total
                    end
                end

                puts 'block'
                puts cell[:score] += children_total
                #best_score = cell[:children].max_by {|childs| childs[:score]}[:score]
                #best_score -= 1
                #cell[:score] += best_score

            end
            puts "cell"
            puts cell
        end


        available_cells.max_by {|cells| cells[:score]}[:position]
    end
end