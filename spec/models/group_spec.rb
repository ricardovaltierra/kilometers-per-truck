require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:test_user) { User.create(name: "user_example") }
  let(subject) do
    described_class.new(
      name: 'NYC'
      icon: 'nyc.jpg'
      user_id: test_user.id
    )
  end

  describe 'validations' do
    it 'has valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not vaid without name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'not vaid without icon' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end

    it 'shoul not allow name with more than 20 characters' do
      subject.name = 's' * 21
      expect(subject).to_not be_valid
    end
  end

  describe 'associations' do
    it { should belong_to(:author) }
    it { should have_many(:travels) }
  end
end