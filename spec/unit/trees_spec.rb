require 'trees'

describe 'trees' do

    it "gives last remaining position" do
        board = ['O','X','O',' ','X','X','X','O','O']
        tree = Trees.new(board)
        expect(tree.generate).to eq([{position: 4, children: [], score: 0}])
    end

    it "gives last remaining position" do
        board = ['O','X','O','X','X','O','O',' ','X']
        tree = Trees.new(board)
        expect(tree.generate).to eq([{position: 8, children: [], score: 0}])
    end

    it "generates possible moves when two empty cells remaining" do
        board = ['X','O','X',' ','O',' ','O','X','X']
        tree = Trees.new(board)
        expect(tree.generate).to eq([{position: 4, children: 
                                                    [{position: 6, children: [], score: -10}], score: 0},
                                    {position: 6, children: 
                                                        [[{position: 4, children: [], score: 0}]], score: 0}])
    end

end