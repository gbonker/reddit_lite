class Post < ActiveRecord::Base
	belongs_to :subreddit

	validates_presence_of :title
	validates_presence_of :url
end
