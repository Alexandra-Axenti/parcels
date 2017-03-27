require('rspec')
require('parcel')

describe('Parcel#parcel') do
  it("returns the volume for a parcel based on the 3 input dimensions") do
    expect(Parcel.new(1,2,3,2).volume()).to(eq(6))
  end

  it("returns the cost to ship for a parcel based on volume, weight, distance and delivery speed") do
    expect(Parcel.new(1,2,3,2).cost_to_ship(90, "Normal")).to(eq(30))
  end
end
