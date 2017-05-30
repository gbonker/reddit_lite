class Post < ActiveRecord::Base
	belongs_to :subreddit

	validates_presence_of :title
	validates_presence_of :url
	validates_presence_of :subreddit_id
	validates_numericality_of :subreddit_id
	
end
