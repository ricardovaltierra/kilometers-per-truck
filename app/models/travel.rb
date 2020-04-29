class Travel < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :group, required: false
  validates :name, presence: true, length: { maximum: 20 }
  validates :kilometers, presence: true

  default_scope -> { order(created_at: :desc) }

  def self.get_all_unofficial(current_user)
    all_mine(current_user).where(group_id: nil)
    # .order(created_at: :desc)
  end

  def self.get_all_official(current_user)
    all_mine(current_user).where.not(group_id: nil)
  end

  def self.all_mine(current_user)
    all.where(user_id: current_user.id)
  end
end
