require "packager"

RSpec.describe Packager do
  let(:base_price) { 1299.99 }
  let(:people) { 3 }
  let(:type) { "food" }

  subject { described_class.new(base_price, people, type) }

  context "initialization" do
    it { expect(subject).to be_an_instance_of Packager }
  end

  context "$1,299.99, 3 people, food" do
    it { expect(subject.calculate).to eql 1591.58 }
  end

  context "$5,432.00, 1 person, drugs" do
    let(:base_price) { 5432 }
    let(:people) { 1 }
    let(:type) { "drugs" }

    it { expect(subject.calculate).to eql 6199.81 }
  end
end
