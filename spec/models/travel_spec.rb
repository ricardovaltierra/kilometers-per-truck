require 'rails_helper'

RSpec.describe Travel, type: :model do
  let(:user) { User.create(name: "user_example")}
  let(:group) do
    described_class.new(
      name: 'NYC'
      icon: 'nyc.jpg'
      user_id: test_user.id
    )
  end
  let(:subject) do
    described_class.new(
      name: "Deliver package #1"
      kilometers: 20
      user_id: user.id
      group_id: group.id
    )
  end

  describe 'validations' do
    it 'has valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without  name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without  kilometers' do
      subject.kilometers = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid without  user_id' do
      subject.user_id = nil
      expect(subject).to_not be_valid
    end

    it 'is not valid with kilometers not numeric' do
      subject.kilometers = "this is not a number"
      expect(subject).to_not be_valid
    end

    it 'is not valid with name bigger than 20 characters' do
      subject.name = "t" * 21
      expect(subject).to_not be_valid
    end
  end

  describe 'associations' do
    it { should belong_to(:author) }
    it { should belong_to(:group) }
  end
end