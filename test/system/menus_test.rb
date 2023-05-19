require "application_system_test_case"

class MenusTest < ApplicationSystemTestCase
  setup do
    @menu = menus(:one)
  end

  test "visiting the index" do
    visit menus_url
    assert_selector "h1", text: "Menus"
  end

  test "should create menu" do
    visit menus_url
    click_on "New menu"

    fill_in "Allergy info", with: @menu.allergy_info
    fill_in "Item", with: @menu.item_id
    fill_in "Name", with: @menu.name
    fill_in "Price", with: @menu.price
    click_on "Create Menu"

    assert_text "Menu was successfully created"
    click_on "Back"
  end

  test "should update Menu" do
    visit menu_url(@menu)
    click_on "Edit this menu", match: :first

    fill_in "Allergy info", with: @menu.allergy_info
    fill_in "Item", with: @menu.item_id
    fill_in "Name", with: @menu.name
    fill_in "Price", with: @menu.price
    click_on "Update Menu"

    assert_text "Menu was successfully updated"
    click_on "Back"
  end

  test "should destroy Menu" do
    visit menu_url(@menu)
    click_on "Destroy this menu", match: :first

    assert_text "Menu was successfully destroyed"
  end
end
