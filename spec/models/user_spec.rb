require 'rails_helper'

Rspec.describe User, type: :model do
  let(:user) { User.create(name: 'user_example') }
  let(other_user) { described_class.new(name: 'other_user') }

  describe 'validations' do
    it 'is valid with name' do
      expect(user).to be_valid
    end

    it 'should not allow name longer than 20 characters' do
      user.name = 'c' * 21
      expect(user).to_not be_valid
    end
  end

  describe 'associations' do
    it { should have_many(:travels) }
    it { should have_many(:groups) }
  end
end
