require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should belong_to(:subreddit)

  should validate_presence_of(:title)
  should validate_presence_of(:url)
  should validate_presence_of(:subreddit_id)

end
