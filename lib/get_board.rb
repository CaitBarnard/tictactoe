class GetBoard

    def initialize(gateway)
        @gateway = gateway
    end

    def execute
        @gateway.get_board
    end

end