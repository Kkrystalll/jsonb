require "test_helper"

class PunchTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @punch_time = punch_times(:one)
  end

  test "should get index" do
    get punch_times_url
    assert_response :success
  end

  test "should get new" do
    get new_punch_time_url
    assert_response :success
  end

  test "should create punch_time" do
    assert_difference("PunchTime.count") do
      post punch_times_url, params: { punch_time: { punch_note: @punch_time.punch_note, punch_time: @punch_time.punch_time, punch_type: @punch_time.punch_type } }
    end

    assert_redirected_to punch_time_url(PunchTime.last)
  end

  test "should show punch_time" do
    get punch_time_url(@punch_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_punch_time_url(@punch_time)
    assert_response :success
  end

  test "should update punch_time" do
    patch punch_time_url(@punch_time), params: { punch_time: { punch_note: @punch_time.punch_note, punch_time: @punch_time.punch_time, punch_type: @punch_time.punch_type } }
    assert_redirected_to punch_time_url(@punch_time)
  end

  test "should destroy punch_time" do
    assert_difference("PunchTime.count", -1) do
      delete punch_time_url(@punch_time)
    end

    assert_redirected_to punch_times_url
  end
end
