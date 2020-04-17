class Travel < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: 'user_id'
  has_and_belongs_to_many :cities, class_name: 'Group'
  validates :name, presence: true, length: { maximum: 20 }
  validates :kilometers, presence: true

  def Travel.get_all_travels
    self.all.order(created_at: :desc)
  end
end
