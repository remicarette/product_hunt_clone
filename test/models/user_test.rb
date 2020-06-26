require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "full_name returns the capitalized first name and last name" do
    user = User.new(first_name: "john", last_name: "lennon")
    simon = User.new(first_name: "siMon", last_name: "chrétien")

    assert_equal "John Lennon",    user.full_name
    assert_equal "Simon Chrétien", simon.full_name
  end
end
