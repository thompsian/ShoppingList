class ItemsController < ApplicationController
    def index
        @items = Item.all
        render json: @items
    end

    def show
        @item = Item.find([params[:id]])
        render json: @item
    end

    def create
        @item = Item.create(item_params)
        if @item.valid?
            render json: @item
        else
            render json: @item.errors
        end
    end
    
    def update
        @item = Item.find(params[:id])
        @item.update_attributes(item_params)
        render json: @item
    end

    def destroy
        @item = Item.find(params[:id])
        if @item.destroy
            render json: @item
        else
            render json: @item.errors
        end
    end
    
    private
    def item_params
        params.require(:item).permit(:name, :itemtype, :location_id)
    end
end
