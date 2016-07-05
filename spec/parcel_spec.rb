require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it('returns the volume of the parcel') do
      test_parcel = Parcel.new(5,2,8,10)
      expect(test_parcel.volume()).to(eq(80))
    end
  end
end
