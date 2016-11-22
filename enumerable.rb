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
    length = self.length
    length.times do |n|

    end
  end
end

my_array = %w(casa carro pão rocha pedra galinha)

my_array.select { |i| i == pão}