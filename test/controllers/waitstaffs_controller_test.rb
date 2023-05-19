require "test_helper"

class WaitstaffsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waitstaff = waitstaffs(:one)
  end

  test "should get index" do
    get waitstaffs_url
    assert_response :success
  end

  test "should get new" do
    get new_waitstaff_url
    assert_response :success
  end

  test "should create waitstaff" do
    assert_difference("Waitstaff.count") do
      post waitstaffs_url, params: { waitstaff: { name: @waitstaff.name, waiter_id: @waitstaff.waiter_id } }
    end

    assert_redirected_to waitstaff_url(Waitstaff.last)
  end

  test "should show waitstaff" do
    get waitstaff_url(@waitstaff)
    assert_response :success
  end

  test "should get edit" do
    get edit_waitstaff_url(@waitstaff)
    assert_response :success
  end

  test "should update waitstaff" do
    patch waitstaff_url(@waitstaff), params: { waitstaff: { name: @waitstaff.name, waiter_id: @waitstaff.waiter_id } }
    assert_redirected_to waitstaff_url(@waitstaff)
  end

  test "should destroy waitstaff" do
    assert_difference("Waitstaff.count", -1) do
      delete waitstaff_url(@waitstaff)
    end

    assert_redirected_to waitstaffs_url
  end
end
