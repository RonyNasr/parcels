require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel = Parcel.new(5,2,8,10)
      expect(test_parcel.volume()).to(eq(80))
    end
  end
  describe('#cost_to_ship') do
    it('returns the cost to ship the parcel') do
      test_parcel = Parcel.new(5,2,8,10)
      expect(test_parcel.cost_to_ship()).to(eq(50))
    end
  end
  describe('#cost_to_ship') do
    it('returns the cost to ship the parcel') do
      test_parcel = Parcel.new(3,3,3,8)
      expect(test_parcel.cost_to_ship()).to(eq(21.50))
    end
  end
end
