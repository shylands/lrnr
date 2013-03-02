class Post < ActiveRecord::Base
  attr_accessible :title, :topic, :url, :user
  belongs_to :user
  belongs_to :topic

  extend FriendlyId
  friendly_id :title, use: :slugged
end
