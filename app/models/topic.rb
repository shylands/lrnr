class Topic < ActiveRecord::Base
  attr_accessible :name, :user
  belongs_to :user
  has_many :posts

  extend FriendlyId
  friendly_id :name, use: :slugged
end
