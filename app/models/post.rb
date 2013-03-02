class Post < ActiveRecord::Base
  attr_accessible :title, :topic, :url, :user
  belongs_to :user
  belongs_to :topic
end
