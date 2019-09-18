require 'ai_minimax'

describe Minimax do 

    it "returns nil when there are no more moves available" do
        available_cells = [{}]
        expect(Minimax.best_move(available_cells)).to eq(nil)
    end
    
    it "returns only position when one available" do
        available_cells = [{position: 1, children: [], score: 0}]
        expect(Minimax.best_move(available_cells)).to eq(1)
    end
    
    it "returns the position with the winning score" do 
        available_cells = [{position: 1, children: [], score: 0},
                           {position: 4, children: [], score: 10}]
        expect(Minimax.best_move(available_cells)).to eq(4)
    end

    it "returns the score of the highest child" do
        available_cells = [{position: 1, children: [], score: 0},
                           {position: 4, children: [
                               {position: 2, children: [], score: 10}
                           ], score: 0}]
        expect(Minimax.best_move(available_cells)).to eq(4)
    end

    it "returns the score of the highest child when multiple children" do
        available_cells = [{position: 1, children: [
            {position: 3, children: [], score: 10}
        ], score: 0},
        {position: 4, children: [
            {position: 2, children: [], score: 0}
        ], score: 0}]
        expect(Minimax.best_move(available_cells)).to eq(1)
    end

    it "returns the score of the quickest highest child" do
        available_cells = [{position: 4, children: [
            {position: 2, children: [], score: 10},
            {position: 3, children: [], score: 0}
        ], score: 0},
            {position: 1, children: [], score: 10}]
        expect(Minimax.best_move(available_cells)).to eq(1)
    end

    it "returns the score of the child's child" do 
        available_cells = [{position: 4, children: [
            {position: 2, children: [
                {position: 5, children: [], score: 10}
            ], score: 0},
            {position: 3, children: [], score: 0}
        ], score: 0},
    {position: 1, children: [], score: 0}]
        expect(Minimax.best_move(available_cells)).to eq(4)
    end

    it "returns the score of the child's child" do 
        available_cells = [{position: 4, children: [
            {position: 2, children: [
                {position: 5, children: [], score: 10},
                {position: 8, children: [], score: 0}
            ], score: 0},
            {position: 3, children: [], score: 0}
        ], score: 0},
    {position: 1, children: [], score: 0}]
        expect(Minimax.best_move(available_cells)).to eq(4)
    end


    it "returns draw when there are only losses" do
        available_cells = [{position: 4, children: [
            {position: 2, children: [], score: 0},
            {position: 3, children: [], score: -10}
        ], score: 0},
        {position: 1, children: [
            {position: 5, children: [], score: 0}
        ], score: 0}]
        expect(Minimax.best_move(available_cells)).to eq(1)
    end

end