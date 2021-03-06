require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should belong_to(:subreddit)

  should validate_presence_of(:title)
  should validate_presence_of(:url)
  should validate_presence_of(:subreddit_id)
  should validate_numericality_of(:subreddit_id)
  should validate_numericality_of(:number_of_comments)
  should validate_numericality_of(:upvotes)
  should validate_numericality_of(:downvotes)

  should allow_value("funny").for(:title)
  should allow_value("todayilearned").for(:title)
  should allow_value("pics").for(:title)
  should_not allow_value(nil).for(:title)
  should_not allow_value("").for(:title)

  should allow_value("www.reddit.com").for(:url)
  should allow_value("www.reddit.com/r/funny").for(:url)
  should_not allow_value("www.reddit.com/r/!funny").for(:url)
  should_not allow_value(nil).for(:url)
  should_not allow_value("").for(:url)
  should_not allow_value("gale").for(:url)

  should allow_value(1).for(:subreddit_id)
  should allow_value(0).for(:subreddit_id)
  should allow_value(2).for(:subreddit_id)
  should_not allow_value(nil).for(:subreddit_id)
  should_not allow_value("gale").for(:subreddit_id)
  should_not allow_value("").for(:subreddit_id)

  should allow_value(10).for(:number_of_comments)
  should allow_value(0).for(:number_of_comments)
  should allow_value(2000).for(:number_of_comments)
  should_not allow_value(nil).for(:number_of_comments)
  should_not allow_value("gale bonker").for(:number_of_comments)
  should_not allow_value("").for(:number_of_comments)

  should allow_value(107).for(:upvotes)
  should allow_value(0).for(:upvotes)
  should allow_value(2000000).for(:upvotes)
  should_not allow_value(nil).for(:upvotes)
  should_not allow_value("gale virginia bonker").for(:upvotes)
  should_not allow_value("").for(:upvotes)

  should allow_value(107).for(:downvotes)
  should allow_value(0).for(:downvotes)
  should allow_value(2000000).for(:downvotes)
  should_not allow_value(nil).for(:downvotes)
  should_not allow_value("gale virginia bonker").for(:downvotes)
  should_not allow_value("").for(:downvotes)

end
