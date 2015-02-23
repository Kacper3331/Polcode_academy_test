require 'rails_helper'

RSpec.describe City, :type => :model do
  let(:city) { FactoryGirl.create(:city) }

  subject { city }

  it { is_expected.to respond_to(:name) }
  it { is_expected.to respond_to(:short_name) }
  it { is_expected.to be_valid }

  describe 'name is not present' do
    before { city.name = nil }
    it { is_expected.to_not be_valid }
  end

  describe 'short_name is not present' do
    before { city.short_name = nil }
    it { is_expected.to_not be_valid }
  end
end
