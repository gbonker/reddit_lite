require 'test_helper'

class SubredditTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  should have_many(:posts)

  should validate_presence_of(:name)
  should validate_uniqueness_of(:name)

  should allow_value("Kristin Turgeon").for(:name)
  should allow_value("Taizjon").for(:name)
  should allow_value("Gale Virginia Bonker").for(:name)
  should_not allow_value(nil).for(:name)
  should_not allow_value("").for(:name)

end
