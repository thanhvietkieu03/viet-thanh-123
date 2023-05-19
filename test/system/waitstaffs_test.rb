require "application_system_test_case"

class WaitstaffsTest < ApplicationSystemTestCase
  setup do
    @waitstaff = waitstaffs(:one)
  end

  test "visiting the index" do
    visit waitstaffs_url
    assert_selector "h1", text: "Waitstaffs"
  end

  test "should create waitstaff" do
    visit waitstaffs_url
    click_on "New waitstaff"

    fill_in "Name", with: @waitstaff.name
    fill_in "Waiter", with: @waitstaff.waiter_id
    click_on "Create Waitstaff"

    assert_text "Waitstaff was successfully created"
    click_on "Back"
  end

  test "should update Waitstaff" do
    visit waitstaff_url(@waitstaff)
    click_on "Edit this waitstaff", match: :first

    fill_in "Name", with: @waitstaff.name
    fill_in "Waiter", with: @waitstaff.waiter_id
    click_on "Update Waitstaff"

    assert_text "Waitstaff was successfully updated"
    click_on "Back"
  end

  test "should destroy Waitstaff" do
    visit waitstaff_url(@waitstaff)
    click_on "Destroy this waitstaff", match: :first

    assert_text "Waitstaff was successfully destroyed"
  end
end
