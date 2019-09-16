

class SaveBoard 

    def initialize(gateway)
        @gateway = gateway
    end

    def execute(board)
        @gateway.save(board)
    end

end