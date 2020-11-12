class TravelInformationsController < ApplicationController
  before_action :set_travel_information, only: [:show, :update, :destroy]

  # GET /travel_informations
  def index
    @travel_informations = TravelInformation.all

    render json: @travel_informations
  end

  # GET /travel_informations/1
  def show
    render json: @travel_information
  end

  # POST /travel_informations
  def create
    @travel_information = TravelInformation.new(travel_information_params)

    if @travel_information.save
      render json: @travel_information, status: :created, location: @travel_information
    else
      render json: @travel_information.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /travel_informations/1
  def update
    if @travel_information.update(travel_information_params)
      render json: @travel_information
    else
      render json: @travel_information.errors, status: :unprocessable_entity
    end
  end

  # DELETE /travel_informations/1
  def destroy
    @travel_information.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_travel_information
      @travel_information = TravelInformation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def travel_information_params
      params.require(:travel_information).permit(:routes, :bus_type, :price, :availability, :transport_company_id, :user_id)
    end
end
