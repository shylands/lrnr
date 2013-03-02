class Post < ActiveRecord::Base
  attr_accessible :title, :topic, :url, :user
end
