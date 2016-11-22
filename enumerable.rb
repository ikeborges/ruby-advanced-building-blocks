module Enumerable
  def my_each
    length = self.length
    length.times do |n|
      yield(self[n])
    end
    return self
  end

  def my_each_with_index
    length = self.length
    length.times do |n|
      yield(self[n], n)
    end
  end

  def my_select
    result = []
    self.my_each do |i|
      result << i if yield(i)
    end
    return result
  end
  
end

my_array = %w(casa carro pão rocha pedra galinha)

p my_array.my_select { |i| i =~ /r/ }