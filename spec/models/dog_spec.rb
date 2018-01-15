require "rails_helper"

RSpec.describe Dog do

	describe "#bark" do
		it "the bark method returns 'woof!' " do
			expect(subject.bark).to eql("woof!")
		end
	end

	describe "#feed" do
		context "when the dog eats" do
			subject { described_class.new(hunger_level: 6) }

			it "is no longer hungry" do
				subject.feed
				expect(subject).to_not be_hungry
			end
		end
	end

	describe "#hungry?" do
		context "when hunger_level is 6 or higher" do
			subject { described_class.new(hunger_level: 6) }

			it "returns true" do
				expect(subject).to be_hungry
			end
		end
		context "when hunger_level is 5 or less" do
			subject { described_class.new(hunger_level: 5) }
			
			it "returns false" do
				expect(subject).to_not be_hungry
			end
		end
	end 
end 

