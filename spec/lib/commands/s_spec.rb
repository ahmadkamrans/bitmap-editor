require 'spec_helper'

describe Command::S do


  context "Press S command" do
    let(:params) { [] }
    let(:bitmap) { Bitmap.new 2,2 }
    before { bitmap.create_matrix }

    let(:canvas) { Command::S.new(bitmap,params).call! }

    it "should print canvas" do
      expect { canvas }.to output("OO\nOO\n").to_stdout
    end
  end

  context "Press invalid command for printing canvas" do
    let(:params) { ['n'] }
    let(:bitmap) { Bitmap.new 2,2 }
    before { bitmap.create_matrix }
    let(:cleared_bitmap) { Command::S.new(bitmap,params).call! }

    it "should raise invalid params exception" do
     expect{ cleared_bitmap }.to raise_error 'Invalid params: ["n"]'
    end
  end
end
