class Post < ActiveRecord::Base
  attr_accessible :title, :topic, :url, :user, :votes, :original, :agreement
  attr_accessor :tag_list
  belongs_to :user
  belongs_to :topic
  has_many :votes
  has_many :bookmarks
  has_many :tags

  extend FriendlyId
  friendly_id :title, use: :slugged

end
