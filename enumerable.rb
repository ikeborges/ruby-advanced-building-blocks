module Enumerable
  def my_each
    length = self.length
    length.times do |n|
      yield(self[n])
    end
    return self
  end
end

my_array = %w(casa carro pão rocha pedra galinha)

my_array.my_each { |i| puts "#{i} testando"}
puts "==========================="
my_array.each { |i| puts "#{i} testando"}