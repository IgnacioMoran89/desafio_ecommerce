require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "price into cents" do
    user_one = User.create(email: "nacho@gmail.com", password: "123456")
    order = Order.create(user:user_one, total: 100)
    assert_equal order.total_cents, 10000
  end

  test "creates payment by order" do
    user_one = User.create(email: "nacho@gmail.com", password: "123456")
    order = Order.create(user:user_one, total: 100)

    PaymentMethod.create(name:"Paypal Express Checkout" , code: "PEC")
    order.create_payment("PEC", "token_123456")

    assert_equal order.payments.last.status, "processing"
  end

  test "status order as completed" do
    user_one = User.create(email: "nacho@gmail.com", password: "123456")
    order = Order.create(user:user_one, total:"100")

    order.complete!

    assert_equal order.status, "completed"
  end

  test "creates a random number" do
    user = User.create(email: "nacho@gmail.com", password: "123456")
    order = Order.create(user_id: user.id)
    assert !order.number.nil?
  end

  test 'number must be unique' do
    user = User.create(email: "nacho@gmail.com", password: "123456")
    order = Order.create(user_id: user.id)
    duplicated_order = order.dup
    assert_not duplicated_order.valid?
  end
end
