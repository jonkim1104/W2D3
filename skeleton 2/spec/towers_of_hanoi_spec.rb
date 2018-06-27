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
      before(:each) {game.move([0,2])} 
      it "removes piece from first tower" do
        expect(game.towers[0]).to eq([2,3])
      end  
      it "adds piece to receiving tower" do
        expect(game.towers[2]).to eq([1])
      end
    end
  end
  
  describe "won?" do
    let(:game1) {TowersOfHanoi.new}
    let(:game2) {TowersOfHanoi.new}
    before(:each) do 
      game1.towers = [[], [1,2,3], []]
      game2.towers = [[], [], [1,2,3]]
    end
    
    it "checks if towers 1 or 2 are full" do
      expect(game1.won?).to eq(true)
      expect(game2.won?).to eq(true)
    end
    
    it "returns false if player hasn't won" do
      expect(game.won?).to eq(false)
    end
  end
  
end