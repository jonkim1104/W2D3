def my_uniq(array)
  result = []
  array.each do |el|
    if result.include?(el)
      next
    else
      result << el 
    end
  end
  result
end

class Array 
  def two_sum
    result = []
    self.each_with_index do |el, idx1|
      (idx1 + 1...self.length).each do |i|
        if el + self[i] == 0
          result << [idx1, i]
        end
      end
    end
    result
  end
end

def transpose(array)
  result = Array.new(array.length) {Array.new(Array[0].length)}
  
  array.each_with_index do |row, i|
    row.each_with_index do |el, j|
      result[j][i] = el 
    end
  end
  result 
end

def stock_picker(array)
  result = []
  diff = 0 
  array.each_with_index do |stock1, idx1|
    (idx1...array.length).each do |idx2|
      if diff < (array[idx2] - stock1)
        diff = array[idx2] - stock1
        result = [idx1, idx2]
      end
    end
  end
  result
end