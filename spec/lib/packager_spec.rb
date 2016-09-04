require "packager"

RSpec.describe Packager do
  context "initialization" do
    it { expect(Packager.new).to be_an_instance_of Packager }
  end
end
