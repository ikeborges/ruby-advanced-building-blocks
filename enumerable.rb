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

  def my_all?
    if block_given?
      result = []
      self.my_each do |i|
        result << i if yield(i)
      end
      return result == self ? true : false
    else
      self.my_each { |i| return false if i == false  || i == nil }
      return true
    end
  end

  def my_any?

  end

end

my_array = ["casa", "carro", "pedra", "galinha"]


p my_array.my_any? { |i| i =~ /a/ }