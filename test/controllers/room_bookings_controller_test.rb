require "test_helper"

class RoomBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_booking = room_bookings(:one)
  end

  test "should get index" do
    get room_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_room_booking_url
    assert_response :success
  end

  test "should create room_booking" do
    assert_difference("RoomBooking.count") do
      post room_bookings_url, params: { room_booking: { end_date: @room_booking.end_date, rooms_id: @room_booking.rooms_id, start_date: @room_booking.start_date, trainers_id: @room_booking.trainers_id } }
    end

    assert_redirected_to room_booking_url(RoomBooking.last)
  end

  test "should show room_booking" do
    get room_booking_url(@room_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_booking_url(@room_booking)
    assert_response :success
  end

  test "should update room_booking" do
    patch room_booking_url(@room_booking), params: { room_booking: { end_date: @room_booking.end_date, rooms_id: @room_booking.rooms_id, start_date: @room_booking.start_date, trainers_id: @room_booking.trainers_id } }
    assert_redirected_to room_booking_url(@room_booking)
  end

  test "should destroy room_booking" do
    assert_difference("RoomBooking.count", -1) do
      delete room_booking_url(@room_booking)
    end

    assert_redirected_to room_bookings_url
  end
end
