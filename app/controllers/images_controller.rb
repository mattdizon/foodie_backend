class ImagesController < ApplicationController
    def index
        @images = Image.all
        render json: @images
    end

    def showImages
        @images = Image.where(user_id: params[:user_id])
        render json: @images
    end

    def create
        @image = Image.create!(image_params)
        render json: @image
    end

    private
    def image_params
        params.require(:image).permit(:chef_recipe_id, :url)
    end
end
