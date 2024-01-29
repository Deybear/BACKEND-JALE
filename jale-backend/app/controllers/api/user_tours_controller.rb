class Api::UserToursController < ApplicationController
    before_action :set_user_tour, only: %i[ show update destroy ]

    # GET /user_tours
    def index
        @user_tours = UserTour.all

        render json: @user_tours
    end

    # GET /user_tours/1
    def show
        render json: @user_tour
    end

    # POST /user_tours
    def create
        @user_tour = UserTour.new(user_tour_params)

        if @user_tour.save
            # render json: @user_tour, status: :created, location: @user_tour
            render status: :created
        else
            render json: @user_tour.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /user_tours/1
    def update
        if @user_tour.update(user_tour_params)
            render json: @user_tour
        else
            render json: @user_tour.errors, status: :unprocessable_entity
        end
    end

    # DELETE /user_tours/1
    def destroy
        @user_tour.destroy!
    end

    # DELETE /delete_tour/:user_id/:place_id
    def delete_tour
        
        @user_id = params[:user_id]
        @place_id = params[:place_id]

        if @user_id.present? && @place_id.present?
            @registered_tour = UserTour.find_by(user_id: @user_id, place_id: @place_id)

            if @registered_tour
                @registered_tour.destroy!
                render json: { message: "Relation deleted successfully" }, status: :ok
            else
                render json: { error: "Relation doesn't exist!" }, status: :not_found
            end
        else
            render json: { error: "Params doesn't exist!" }, status: :not_found
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_tour
        @user_tour = UserTour.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_tour_params
        params.require(:user_tour).permit(:user_id, :place_id)
    end
end
