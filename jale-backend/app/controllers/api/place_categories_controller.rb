class Api::PlaceCategoriesController < ApplicationController
    before_action :set_place_category, only: %i[ show update destroy ]

    # GET /place_categories
    def index
        @place_categories = PlaceCategory.all

        render json: @place_categories
    end

    # GET /place_categories/1
    def show
        render json: @place_category
    end

    # POST /place_categories
    def create
        @place_category = PlaceCategory.new(place_category_params)

        if @place_category.save
            # render json: @place_category, status: :created, category: @place_category
            render status: :created
        else
            render json: @place_category.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /place_categories/1
    def update
        if @place_category.update(place_category_params)
            render json: @place_category
        else
            render json: @place_category.errors, status: :unprocessable_entity
        end
    end

    # DELETE /place_categories/1
    def destroy
        @place_category.destroy!
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_category
        @place_category = PlaceCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def place_category_params
        params.require(:place_category).permit(:place_id, :category_id)
    end
end
