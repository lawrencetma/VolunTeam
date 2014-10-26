class User < ActiveRecord::Base
  has_secure_password
  has_many :teams
  has_many :events, through: :teams
  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  has_many :followers, through: :follower_follows, source: :follower
  has_many :follower_follows, foreign_key: :followee_id, class_name: "Follow"
  has_many :followees, through: :followee_follows, source: :followee
  has_many :followee_follows, foreign_key: :follower_id, class_name: "Follow"
end