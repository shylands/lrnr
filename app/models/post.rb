class Post < ActiveRecord::Base
  attr_accessible :title, :topic, :url, :user, :votes
  belongs_to :user
  belongs_to :topic
  has_many :votes
  has_many :bookmarks

  extend FriendlyId
  friendly_id :title, use: :slugged

end
