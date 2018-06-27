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
    from = gets.chomp.to_i
    puts "Choose tower to move to:"
    to = gets.chomp.to_i
    [from, to]
  end
  
  def valid_move?(input)
    from, to = input
    if from.between?(0, 2) && to.between?(0, 2) 
      if towers[to].empty?
        return true
      elsif towers[from][0] < towers[to][0]
        return true
      end 
    end
    false
  end 
  
  def won?
    towers[1,2].any? {|tower| tower == [1,2,3]}
  end
  
  def play
    until self.won?
      self.render
      input = self.get_input
      if valid_move?(input)
        self.move(input)
        self.won?
      else
        puts "Invalid move! Try again!"
        next
      end
    end
    "Goodbye"
  end
  
  def render
    puts "0: #{towers[0]}"
    puts ''
    puts "1: #{towers[1]}"
    puts ''
    puts "2: #{towers[2]}"
  end
end

TowersOfHanoi.new.play