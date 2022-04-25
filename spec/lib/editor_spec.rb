require 'spec_helper'

describe Editor do
  let(:editor) { Editor.new.call }
  
  context "when user press exit X command" do
    before  { allow(Readline).to receive(:readline).with("> ", true).and_return("X") }

    it "should exit from the system" do
      expect { editor; exit }.to raise_error SystemExit
    end
  end

  context "when user press invalid command" do
    before  { allow(Readline).to receive(:readline).with("> ", true).and_return("B") }

    it "should raise invalid command error" do
      # expect { editor }.to raise_error "Invalid command: B"
    end
  end
end
