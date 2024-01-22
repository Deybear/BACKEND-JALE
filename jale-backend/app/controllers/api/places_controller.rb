class Api::PlacesController < ApplicationController
  before_action :set_place, only: %i[ show update destroy ]

  # GET /places
  def index
    @places = Place.all

    render json: @places
  end

  # GET /places/1
  def show
    render json: @place.as_json(include: [:photos, :place_location])
  end

  # POST /places
  def create
    @place = Place.new(place_params)

    if @place.save
      # render json: @place, status: :created, location: @place
      render status: :created
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /places/1
  def update
    if @place.update(place_params)
      render json: @place
    else
      render json: @place.errors, status: :unprocessable_entity
    end
  end

  # DELETE /places/1
  def destroy
    @place.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_params
      params.require(:place).permit(:place_name, :place_desc, :place_cost, :place_email, :place_score, :place_phone, :place_website, :place_address, :place_time_open, :place_time_close, photos: [], place_location:)
    end
end
