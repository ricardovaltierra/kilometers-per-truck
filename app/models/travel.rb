class Travel < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  belongs_to :groups, required: false
  validates :name, presence: true, length: { maximum: 20 }
  validates :kilometers, presence: true

  def self.get_all_unofficial_travels(current_user)
    all.where("user_id = #{current_user.id} AND group_id != null").order(created_at: :desc)
  end

  def self.get_all_official_travels(current_user)
    all.where(user_id: current_user && group_id != nil).order(created_at: :desc)
  end
  
end
