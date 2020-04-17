class User < ApplicationRecord
  has_many :travels, foreign_key: "author_id", class_name: "Travel", dependent: :destroy
  has_many :groups, foreign_key: "author_id", class_name: "Group", dependent: :destroy

  validates: :name, presence: true, length: { maximum: 20 }

  order_scope -> { order(created_at: :desc) }
end
