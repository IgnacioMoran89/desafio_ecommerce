require "application_system_test_case"

class CouponsTest < ApplicationSystemTestCase
  setup do
    @coupon = coupons(:one)
  end

  test "visiting the index" do
    visit coupons_url
    assert_selector "h1", text: "Coupons"
  end

  test "creating a Coupon" do
    visit coupons_url
    click_on "New Coupon"

    fill_in "Amount", with: @coupon.amount
    fill_in "Code", with: @coupon.code
    fill_in "Count", with: @coupon.count
    fill_in "Discount", with: @coupon.discount
    fill_in "Type", with: @coupon.type
    fill_in "User", with: @coupon.user_id
    click_on "Create Coupon"

    assert_text "Coupon was successfully created"
    click_on "Back"
  end

  test "updating a Coupon" do
    visit coupons_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @coupon.amount
    fill_in "Code", with: @coupon.code
    fill_in "Count", with: @coupon.count
    fill_in "Discount", with: @coupon.discount
    fill_in "Type", with: @coupon.type
    fill_in "User", with: @coupon.user_id
    click_on "Update Coupon"

    assert_text "Coupon was successfully updated"
    click_on "Back"
  end

  test "destroying a Coupon" do
    visit coupons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coupon was successfully destroyed"
  end
end