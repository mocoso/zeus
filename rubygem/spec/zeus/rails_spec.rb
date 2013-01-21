require 'spec_helper'

describe Zeus::Rails do
  subject {Zeus::Rails.new}

  describe "#default_bundle" do
    it "adds tracking for Gemfile.lock" do
      Zeus::LoadTracking.should_receive(:add_feature).with('./Gemfile.lock')
      subject.default_bundle
    end
  end
end
