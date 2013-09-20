require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "index should contain exactly 2 pizzerias" do
    get :index
    assert_select 'ul' do |elements|
      assert_select elements.first, "li", 2
    end
  end

  test "should get show" do
    get :show, id: restaurants(:place)
    assert_response :success
  end

  test "show should display 2 pizzerias" do
    get :show, id: restaurants(:place)
    assert_select 'div table' do |elements|
      assert_select elements.first, "tr", restaurants(:place).pizzas.count + 1
    end
  end

end
