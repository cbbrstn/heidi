class WebcamsController < ApplicationController
  before_action :set_webcam, only: [:show, :edit, :update]

  # respond_to :html, :json

  def index
    @webcams = Webcam.all

    respond_to do |format|
            format.html
            format.json { render :json => @webcams }
        end

  end

  def show

    respond_to do |format|
            format.html
            format.json { render :json => @webcam }
        end

  end

  def create

    @webcam = Webcam.new(webcam_params)

    if @webcam.save
      redirect_to root_path
    end

  end

  def new
    @webcam = Webcam.new

  end

  def edit

  end

  def update
  end

  private

  def webcam_params
    params.require(:webcam).permit(:name, :url, :location)

  end

  def set_webcam
      @webcam = Webcam.find(params[:id])
  end


end
