class Minimax

    def self.bests_move(available_cells)
       
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
        end

        available_cells.max_by {|cells| cells[:score]}[:position]
    end

    ############ HIGHLY DANGEROUS ZONE ############

    def self.recursion(cell, total)
        puts "THE FIRST CELL:"
        puts cell
        if cell[:children].empty?
            puts "score"
            puts cell[:score]
            return cell[:score]
        else
            puts "total:"
            puts total
            cell[:children].each do |child|
                total += recursion(child, total)
                total -= 1
            end
           # total += recursion(cell[:children][0], total)

            total
        end
    end

    def self.best_move(available_cells)
       
        if available_cells[0].empty?
            return nil
        end
        
        available_cells.each do |cell|
            #cell_score = cell[:score]

            cell[:score] += self.recursion(cell, cell[:score])
        end

        available_cells.max_by {|cells| cells[:score]}[:position]
    end

end