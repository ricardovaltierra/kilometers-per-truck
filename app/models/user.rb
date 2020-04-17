class User < ApplicationRecord
  has_many :travels, foreign_key: "user_id", class_name: "Travel", dependent: :destroy
  has_many :groups, foreign_key: "user_id", class_name: "Group", dependent: :destroy

  validates :name, presence: true, length: { maximum: 20 }

  default_scope -> { order(created_at: :desc) }
end
