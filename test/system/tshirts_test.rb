require "application_system_test_case"

class TshirtsTest < ApplicationSystemTestCase
  setup do
    @tshirt = tshirts(:one)
  end

  test "visiting the index" do
    visit tshirts_url
    assert_selector "h1", text: "Tshirts"
  end

  test "should create tshirt" do
    visit tshirts_url
    click_on "New tshirt"

    fill_in "Character", with: @tshirt.character
    fill_in "Color", with: @tshirt.color
    fill_in "Size", with: @tshirt.size
    click_on "Create Tshirt"

    assert_text "Tshirt was successfully created"
    click_on "Back"
  end

  test "should update Tshirt" do
    visit tshirt_url(@tshirt)
    click_on "Edit this tshirt", match: :first

    fill_in "Character", with: @tshirt.character
    fill_in "Color", with: @tshirt.color
    fill_in "Size", with: @tshirt.size
    click_on "Update Tshirt"

    assert_text "Tshirt was successfully updated"
    click_on "Back"
  end

  test "should destroy Tshirt" do
    visit tshirt_url(@tshirt)
    click_on "Destroy this tshirt", match: :first

    assert_text "Tshirt was successfully destroyed"
  end
end
