require('pry')

class Parcel
  define_method(:initialize) do |length, height, depth, weight|
    @length = length
    @height = height
    @depth = depth
    @weight = weight
  end
  define_method(:volume) do
    @length * @height * @depth
  end
  define_method(:cost_to_ship) do
    @weight + (self.volume() * 0.5)
  end
end
