require "application_system_test_case"

class PunchTimesTest < ApplicationSystemTestCase
  setup do
    @punch_time = punch_times(:one)
  end

  test "visiting the index" do
    visit punch_times_url
    assert_selector "h1", text: "Punch times"
  end

  test "should create punch time" do
    visit punch_times_url
    click_on "New punch time"

    fill_in "Punch note", with: @punch_time.punch_note
    fill_in "Punch time", with: @punch_time.punch_time
    fill_in "Punch type", with: @punch_time.punch_type
    click_on "Create Punch time"

    assert_text "Punch time was successfully created"
    click_on "Back"
  end

  test "should update Punch time" do
    visit punch_time_url(@punch_time)
    click_on "Edit this punch time", match: :first

    fill_in "Punch note", with: @punch_time.punch_note
    fill_in "Punch time", with: @punch_time.punch_time
    fill_in "Punch type", with: @punch_time.punch_type
    click_on "Update Punch time"

    assert_text "Punch time was successfully updated"
    click_on "Back"
  end

  test "should destroy Punch time" do
    visit punch_time_url(@punch_time)
    click_on "Destroy this punch time", match: :first

    assert_text "Punch time was successfully destroyed"
  end
end
