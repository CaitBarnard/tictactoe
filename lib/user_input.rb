class UserInput
    def initialize 
    end 

    def execute 
        value = gets.chomp.to_i
        puts value

        if value < 10 && value > 0
            return value
        else
            print "That's not a number between 1 to 9\n"
            execute
        end
    end
end
