class Post < ActiveRecord::Base
  attr_accessible :title, :topic, :url, :user, :votes, :original, :agreement
  belongs_to :user
  belongs_to :topic
  has_many :votes

  acts_as_taggable

  extend FriendlyId
  friendly_id :title, use: :slugged

end
