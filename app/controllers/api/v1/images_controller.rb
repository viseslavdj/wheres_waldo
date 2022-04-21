class Api::V1::ImagesController < ApplicationController
  def index
      @images = Image.all
      render json: @images
  end
  def show
      @image = Image.find(params[:id])
      render json: @image.to_json(:include => {:characters => {:only => [:id, :name, :x_pos, :y_pos]}})
  end
end