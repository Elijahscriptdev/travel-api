class TransportCompaniesController < ApplicationController
  before_action :set_transport_company, only: [:show, :update, :destroy]

  # GET /transport_companies
  def index
    @transport_companies = TransportCompany.all

    render json: @transport_companies
  end

  # GET /transport_companies/1
  def show
    render json: @transport_company
  end

  # POST /transport_companies
  def create
    @transport_company = TransportCompany.new(transport_company_params)

    if @transport_company.save
      render json: @transport_company, status: :created, location: @transport_company
    else
      render json: @transport_company.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /transport_companies/1
  def update
    if @transport_company.update(transport_company_params)
      render json: @transport_company
    else
      render json: @transport_company.errors, status: :unprocessable_entity
    end
  end

  # DELETE /transport_companies/1
  def destroy
    @transport_company.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport_company
      @transport_company = TransportCompany.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def transport_company_params
      params.require(:transport_company).permit(:name, :user_id)
    end
end
