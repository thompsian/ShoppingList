class LocationsController < ApplicationController
    def index
        @locations = Location.all
        render json: @locations
    end

    def show
        @location = Location.find([params[:id]])
        render json: @location
    end

    def create
        @location = Location.create(location_params)
        if @location.valid?
            render json: @location
        else
            render json: @location.errors
        end
    end
    
    def update
        @location = Location.find(params[:id])
        @location.update_attributes(location_params)
        render json: @location
    end

    def destroy
        @location = Location.find(params[:id])
        if @location.destroy
            render json: @location
        else
            render json: @location.errors
        end
    end
    
    private
    def item_params
        params.require(:location).permit(:title)
    end
end
