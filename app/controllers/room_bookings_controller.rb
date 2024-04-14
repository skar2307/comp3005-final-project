class RoomBookingsController < ApplicationController
  before_action :set_room_booking, only: %i[ show edit update destroy ]

  # GET /room_bookings or /room_bookings.json
  def index
    @room_bookings = RoomBooking.all
  end

  # GET /room_bookings/1 or /room_bookings/1.json
  def show
  end

  # GET /room_bookings/new
  def new
    @room_booking = RoomBooking.new
  end

  # GET /room_bookings/1/edit
  def edit
  end

  # POST /room_bookings or /room_bookings.json
  def create
    @room_booking = RoomBooking.new(room_booking_params)

    respond_to do |format|
      if @room_booking.save
        format.html { redirect_to room_booking_url(@room_booking), notice: "Room booking was successfully created." }
        format.json { render :show, status: :created, location: @room_booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_bookings/1 or /room_bookings/1.json
  def update
    respond_to do |format|
      if @room_booking.update(room_booking_params)
        format.html { redirect_to room_booking_url(@room_booking), notice: "Room booking was successfully updated." }
        format.json { render :show, status: :ok, location: @room_booking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_bookings/1 or /room_bookings/1.json
  def destroy
    @room_booking.destroy!

    respond_to do |format|
      format.html { redirect_to room_bookings_url, notice: "Room booking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_booking
      @room_booking = RoomBooking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room_booking_params
      params.require(:room_booking).permit(:start_date, :end_date, :rooms_id, :trainers_id)
    end
end
