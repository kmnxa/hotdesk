require "application_system_test_case"

class DesksTest < ApplicationSystemTestCase
  setup do
    @desk = desks(:one)
  end

  test "visiting the index" do
    visit desks_url
    assert_selector "h1", text: "Desks"
  end

  test "should create desk" do
    visit desks_url
    click_on "New desk"

    fill_in "End time", with: @desk.end_time
    fill_in "Place", with: @desk.place
    fill_in "Start time", with: @desk.start_time
    click_on "Create Desk"

    assert_text "Desk was successfully created"
    click_on "Back"
  end

  test "should update Desk" do
    visit desk_url(@desk)
    click_on "Edit this desk", match: :first

    fill_in "End time", with: @desk.end_time
    fill_in "Place", with: @desk.place
    fill_in "Start time", with: @desk.start_time
    click_on "Update Desk"

    assert_text "Desk was successfully updated"
    click_on "Back"
  end

  test "should destroy Desk" do
    visit desk_url(@desk)
    click_on "Destroy this desk", match: :first

    assert_text "Desk was successfully destroyed"
  end
end
