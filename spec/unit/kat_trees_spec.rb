require 'kat_trees'

describe Tree do
    it "returns an empty array if the board is full" do
      expect(Tree.to_tree(['X', 'O', 'X', 'O', 'X', 'O', 'O', 'O', 'X'], false)).to eq([])
    end
    it "returns an array with 1 node if there is 1 choice left" do
      expect(Tree.to_tree(['X', 'O', 'X', 'O', 'X', 'O', 'O', 'O', ' '], false)).to eq([{position: 9, children: [], score: 10}])
    end
    it "returns an array with 1 node if there is 1 choice left (example 2)" do
      expect(Tree.to_tree(['X', 'O', 'X', 'O', 'X', 'O', 'O', ' ', 'O'], false)).to eq([{position: 8, children: [], score: 10}])
    end
    it "returns an array with 2 nodes if there are 2 choices left (example 2)" do
      expect(Tree.to_tree(['O', 'X', 'X', ' ', 'O', 'X', 'O', ' ', 'O'], false)).to eq([{position: 4, children: [], score: 10},
                                                                                       {position: 8, children: [], score: 10}])
    end
    it "returns an array with 2 nodes and children" do
      expect(Tree.to_tree(['X', 'O', 'X', 'O', 'O', 'X', ' ', ' ', 'O'], false)).to eq([{position: 7, children: [{position: 8, children: [], score: 0}], score: 0},
                                                                                      {position: 8, children: [], score: 10}])
      end
      it "can check a win" do
        expect(Tree.is_win?(['O', 'X', 'X', 'O', 'O', 'X', 'O',' ', 'O'])).to eq(true)
      end
    it "returns a more complex table" do
      tree = [
          {position: 5, children: [{position: 6, children: [], score: 0}], score: 0},
          {position: 6, children: [], score: 10}
      ]
      expect(Tree.to_tree(['X', 'X', 'O', 'O', ' ', ' ', 'X', 'X', 'O'], false)).to eq(tree)
    end

    it "returns a score with a minus" do
      tree = [
          {position: 5, children: [{position: 6, children: [], score: 0}], score: 0},
          {position: 6, children: [], score: 10}
      ]
      expect(Tree.to_tree(['X', 'X', 'O', 'O', ' ', ' ', 'X', 'X', 'O'], false)).to eq(tree)
    end

    it "returns a score with a minus (example 2)" do
      tree = [{position: 4, children: 
                            [position: 7, children: [], score: -10], score: 0},
              {position: 7, children: 
                        [position: 4, children: [], score: 0], score: 0}]

      expect(Tree.to_tree(['O','O','X',' ','X','O',' ','X','X'], false)).to eq(tree)
    end

   end