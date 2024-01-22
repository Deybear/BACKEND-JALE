class Api::PlaceLocationsController < ApplicationController
    before_action :set_place_location, only: %i[ show update destroy ]

    # GET /place_locations
    def index
        @place_locations = PlaceLocation.all

        render json: @place_locations
    end

    # GET /place_locations/1
    def show
        render json: @place_location
    end

    # POST /place_locations
    def create
        @place_location = PlaceLocation.new(place_location_params)

        if @place_location.save
            # render json: @place_location, status: :created, location: @place_location
            render status: :created
        else
            render json: @place_location.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /place_locations/1
    def update
        if @place_location.update(place_location_params)
            render json: @place_location
        else
            render json: @place_location.errors, status: :unprocessable_entity
        end
    end

    # DELETE /place_locations/1
    def destroy
        @place_location.destroy!
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_location
        @place_location = PlaceLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_location_params
        params.require(:place_location).permit(:place_lat, :place_lon, :place_id)
    end
end
