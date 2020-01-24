class Shoe
  attr_reader :brand
  attr_writer :color
  # constructor (store some initial data)
  def initialize(size, brand, color)
    @size = size
    @brand = brand
    @color = color
  end
end

p shoe = Shoe.new(12, 'adidas', 'white')
puts shoe.brand

puts "spray painting shoe..."
shoe.color = 'blue'
p shoe

