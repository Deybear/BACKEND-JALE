class Api::EventLocationsController < ApplicationController
    before_action :set_event_location, only: %i[ show update destroy ]

    # GET /event_locations
    def index
        @event_locations = EventLocation.all

        render json: @event_locations
    end

    # GET /event_locations/1
    def show
        render json: @event_location
    end

    # POST /event_locations
    def create
        @event_location = EventLocation.new(event_location_params)

        if @event_location.save
            # render json: @event_location, status: :created, location: @event_location
            render status: :created
        else
            render json: @event_location.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /event_locations/1
    def update
        if @event_location.update(event_location_params)
            render json: @event_location
        else
            render json: @event_location.errors, status: :unprocessable_entity
        end
    end

    # DELETE /event_locations/1
    def destroy
        @event_location.destroy!
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_location
        @event_location = EventLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_location_params
        params.require(:event_location).permit(:event_lat, :event_lon, :event_id)
    end
end
