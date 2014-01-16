require 'test_helper'

class UserFriendshipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

should belong_to(:user)
should belong_to(:friend)

test "that creating a friendship works" do
assert_nothing_raised do
UserFriendship.create user: users(:jason), friend: users(:jim)
end
end
end
