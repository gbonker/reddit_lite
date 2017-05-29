require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should have_many(:posts)

  should validate_presence_of(:name)

end
