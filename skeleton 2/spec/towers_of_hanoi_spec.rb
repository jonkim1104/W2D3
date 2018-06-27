require 'towers_of_hanoi'
require 'rspec'

describe "TowersOfHanoi" do 
  subject(:game) {TowersOfHanoi.new}
  
  describe "initialize" do
    it "initializes towers" do
      expect(game.towers).to eq([[1,2,3], [], []])
    end
  end
  
  describe "move" do
    context "when moving a piece from one tower to another" do
      game.move([0,2]) 
      it "removes piece from first tower" do
        expect(game.tower[0]).to eq([2,3])
      end  
      it "adds piece to receiving tower" do
        expect(tower[2]).to eq([1])
      end
    end
  end
end