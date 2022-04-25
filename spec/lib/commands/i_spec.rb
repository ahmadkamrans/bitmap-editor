require 'spec_helper'

describe Command::I do


  context "Press I command" do
    let(:params) { [2,2] }
    let(:bitmap) { Bitmap.new }
    let(:canvas) { Command::I.new(bitmap,params).call! }

    it "should create the canvas" do
      expect( canvas ).to be_a Array
      expect( canvas ).to eq([["O","O"],["O","O"]])
    end
  end

  context "Press invalid command for creating canvas" do
    let(:bitmap) { Bitmap.new }
    let(:params) { [1] }
    let(:canvas) { Command::I.new(bitmap,params).call! }

    it "should raise invalid params exception" do
     expect{ canvas }.to raise_error 'Invalid params: [1]'
    end
  end

  context "adding out of range params for creating canvas" do
    let(:bitmap) { Bitmap.new }
    let(:params) { [290, 2] }
    let(:canvas) { Command::I.new(bitmap,params).call! }

    it "should raise invalid range exception" do
     expect{ canvas }.to raise_error 'Validation error: pixel coordinates should be between 1 and 250'
    end
  end
end
