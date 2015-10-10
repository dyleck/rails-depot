require 'test_helper'

class CartTest < ActiveSupport::TestCase
  test "should create cart and add line_items" do
    cart = Cart.create
    cart.add_product(products(:ruby).id)
    cart.save!
    assert_equal 1, cart.line_items.count, "should create single line_item"
    cart.add_product(products(:python).id)
    cart.save!
    assert_equal 2, cart.line_items.count, "should create two line_items"
    line_item = cart.add_product(products(:ruby).id)
    cart.save!
    assert_equal 2, cart.line_items.count, "should create single line item"
    assert_equal 2, line_item.quantity, "should have quantity of 2"
  end
end
