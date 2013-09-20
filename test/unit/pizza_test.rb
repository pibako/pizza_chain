require 'test_helper'

class PizzaTest < ActiveSupport::TestCase

  test "price of pizza should be additive" do
    assert_equal 10.98, pizzas(:pepperoni).price + pizzas(:margherita).price
  end

  test "pizza must contain name, price and description" do
    pizzeria = restaurants(:place)
    assert_difference("Pizza.count") do
      pizzeria.pizzas.create(name: "diavolo",
                             price: 10.50,
                             description: "some ingredients")
    end
    assert_no_difference("Pizza.count") do
      pizzeria.pizzas.create(price: 10.50,
                             description: "some ingredients")
    end
    assert_no_difference("Pizza.count") do
      pizzeria.pizzas.create(name: "diavolo",
                             description: "some ingredients")
    end
    assert_no_difference("Pizza.count") do
      pizzeria.pizzas.create(name: "diavolo",
                             price: 10.50)
    end
  end
end
