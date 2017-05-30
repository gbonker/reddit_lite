class Post < ActiveRecord::Base
	belongs_to :subreddit

	validates_presence_of :title, :url, :subreddit_id
	
	validates_format_of :url, with: /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/, :multiline => true

	validates_numericality_of :subreddit_id, :number_of_comments, :upvotes, :downvotes

end
