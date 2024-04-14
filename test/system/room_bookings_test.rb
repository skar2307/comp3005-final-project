require "application_system_test_case"

class RoomBookingsTest < ApplicationSystemTestCase
  setup do
    @room_booking = room_bookings(:one)
  end

  test "visiting the index" do
    visit room_bookings_url
    assert_selector "h1", text: "Room bookings"
  end

  test "should create room booking" do
    visit room_bookings_url
    click_on "New room booking"

    fill_in "End date", with: @room_booking.end_date
    fill_in "Rooms", with: @room_booking.rooms_id
    fill_in "Start date", with: @room_booking.start_date
    fill_in "Trainers", with: @room_booking.trainers_id
    click_on "Create Room booking"

    assert_text "Room booking was successfully created"
    click_on "Back"
  end

  test "should update Room booking" do
    visit room_booking_url(@room_booking)
    click_on "Edit this room booking", match: :first

    fill_in "End date", with: @room_booking.end_date
    fill_in "Rooms", with: @room_booking.rooms_id
    fill_in "Start date", with: @room_booking.start_date
    fill_in "Trainers", with: @room_booking.trainers_id
    click_on "Update Room booking"

    assert_text "Room booking was successfully updated"
    click_on "Back"
  end

  test "should destroy Room booking" do
    visit room_booking_url(@room_booking)
    click_on "Destroy this room booking", match: :first

    assert_text "Room booking was successfully destroyed"
  end
end
