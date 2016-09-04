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
    let(:type) { "pharma" }

    it { expect(subject.calculate).to eql 6199.81 }
  end

  context "$12,456.95, 4 people, books" do
    let(:base_price) { 12456.95 }
    let(:people) { 4 }
    let(:type) { "books" }

    it { expect(subject.calculate).to eql 13707.63 }
  end
end
