require 'spec_helper'

describe Command::C do


  context "Press C command" do
    let(:params) { [] }
    let(:bitmap) { Bitmap.new 2,2 }
    before { bitmap.create_matrix }
    let(:cleared_bitmap) { Command::C.new(bitmap,params).call! }

    it "should return cleared bitmap matrix" do
      expect( cleared_bitmap ).to be_a Array
      expect( cleared_bitmap ).to eq([["O","O"],["O","O"]])
    end
  end

  context "Press invalid command for clearing canvas" do
    let(:params) { ['n'] }
    let(:bitmap) { Bitmap.new 2,2 }
    before { bitmap.create_matrix }
    let(:cleared_bitmap) { Command::C.new(bitmap,params).call! }

    it "should raise invalid params exception" do
     expect{ cleared_bitmap }.to raise_error 'Invalid params: ["n"]'
    end
  end
end
