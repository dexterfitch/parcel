require('rspec')
require('parcel')

describe(Parcel) do

  describe('#volume') do
    it('returns the volume of an object given the length, width ') do
      test_parcel = Parcel.new(5, 5, 5, 2) #length, width, height, weight
      expect(test_parcel.volume()).to(eq(125))
    end
  end

  describe('#cost_to_ship') do
    it('returns the base price [5] of an object that is less than 512 volume and less than 3 pounds') do
      test_parcel = Parcel.new(5, 5, 5, 2) #length, width, height, weight
      expect(test_parcel.cost_to_ship()).to(eq(5))
    end

    it('returns the total shipping cost of an object that is greater than 512 volume and greater than 3 pounds') do
      test_parcel = Parcel.new(10, 10, 10, 5)
      expect(test_parcel.cost_to_ship()).to(eq(16.25))
    end
  end

end
