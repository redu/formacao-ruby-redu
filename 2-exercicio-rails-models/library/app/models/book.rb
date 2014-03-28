class Book < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true

  scope :by_name, lambda { where(name: "1984") }
  scope :after, lambda { |time| where("created_at > ?", time) }
  scope :most_recent, lambda { order("created_at DESC").limit(5) }
  scope :most_recent_by_user, lambda { |id| where(user_id: id).most_recent }
end
