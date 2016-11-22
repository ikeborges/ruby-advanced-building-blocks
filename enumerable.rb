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

  end
end

my_array = %w(casa carro pão rocha pedra galinha)

my_array.my_each_with_index { |v, i| puts "#{v} testando com o index #{i}"}