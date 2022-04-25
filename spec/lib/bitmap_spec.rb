require 'spec_helper'

describe Bitmap do

  let(:bitmap) { Bitmap.new }

  context "initilizing new bitmap" do
    it "should create empty object" do
      expect( bitmap.width  ).to eq 0
      expect( bitmap.height ).to eq 0
      expect( bitmap.pixels ).to be_a Array
    end
  end

  context "creating 2D matrix with specific width and height" do
    before do
      bitmap.width  = 2
      bitmap.height = 3
    end

    it "should create bitmap matrix" do
      expect{ bitmap.create_matrix }.to change { bitmap.pixels }.to( [["O", "O"],["O", "O"],["O", "O"]] )
    end
  end
end
