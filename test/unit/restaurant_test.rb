require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  test "restaurant name should be unique" do
    assert_difference("Restaurant.count", 1) do
      3.times { Restaurant.create name: "Pizza Mia!" }
    end
  end
end
