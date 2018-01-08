require 'rails_helper'

RSpec.describe Album do
  subject {Album.new}
  it "is not valid without a title" do
  	expect(subject).not_to be_valid
  end

  it "is not valid if title longer than 100 characters" do
  	subject.title = 'a' * 101
  	expect(subject).not_to be_valid
  end

  it "is valid with proper data" do
  	subject.title = 'a' * 100
  	expect(subject).to be_valid
  end

end
