require "bike"

describe Bike do
  it { is_expected.to respond_to :working? }
  it "reports broken bike" do
    expect(subject).to respond_to(:report_bike)
  end

  it { is_expected.to respond_to :broken? }
end
