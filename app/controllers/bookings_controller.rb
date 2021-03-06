class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  # GET /bookings
  def index
    # @bookings = Booking.all
    render json: current_user.bookings.order(created_at: :desc), include: :travel_information
    # render json: @bookings
  end

  # GET /bookings/1
  def show
    render json: @booking
  end

  # POST /bookings
  def create
    # @booking = Booking.new(booking_params)

    # if @booking.save
    #   render json: @booking, status: :created, location: @booking
    # else
    #   render json: @booking.errors, status: :unprocessable_entity
    # end

    @booking = Booking.create!(booking_params)
    json_response(@booking)
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def booking_params
      params.require(:booking).permit(:travel_information_id, :user_id)
    end
end
