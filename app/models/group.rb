class Group < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_and_belongs_to_many :travels
  validates :name, presence: true, length: { maximum: 20 }
  validates :icon, presence: true

  default_scope -> { order(created_at: :desc) }
end
