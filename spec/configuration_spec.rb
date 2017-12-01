require 'rails_helper'

RSpec.describe PlanModelConcerns::Configuration do
  describe "#settings" do
    it "returns a Settings object" do
      expect(PlanModelConcerns.configuration.settings).to be_kind_of(Config::Options)
    end
  end

end
