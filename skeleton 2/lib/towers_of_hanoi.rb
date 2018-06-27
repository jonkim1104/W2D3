class TowersOfHanoi
  
  attr_accessor :towers 
  
  def initialize
    @towers = [[1, 2, 3], [], []]
  end
  
  def move(inputs)
    from, to = inputs
    towers[to].unshift(towers[from].shift)
  end
  
  def get_input
    puts "Choose tower to move from:"
    from = gets.chomp
    puts "Choose tower to move to:"
    to = gets.chomp
    [from, to]
  end
  
  def valid_move?(input)
    from, to = input
    if from.between?(-1, 3) && to.between(-1,3) 
      if tower[to].empty?
        return true
      elsif tower[from][0] < tower[to][0]
        return true
      end 
    end
    false
  end 
  
  def won?
    towers[1,2].any? {|tower| tower == [1,2,3]}
  end
  
  
end