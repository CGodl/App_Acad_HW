class BandsController < ApplicationController
  def new
    @bands = Band.new
    render :new
  end

  def index
    @bands = Band.all
    render :index

  end

  def create
    @band = Band.new(params[:id])
    if band.save
      redirect_to band_url(@band)
    else
      flash.now[:errors] = ["Cannot create profile"]
    end


  end
  
  def edit
    @band = Band.find_by(bands_params)
    render :edit
  end
    
  def show
    @band = Band.find_by(params[:id])
    render :show
  end
    
  def update
    @band = Band.find_by(params[:id])
    if @band.update(bands_params)
      redirect_to band_url(@band.id)
    else
      flash.now[:errors] = ["Incorrect information. Cannot update band"]
    end
  end
    
  def destroy
    @band = Band.find_by(params[:id])
  end

  def bands_params
    params.require(:band).permit(:name)
  end

  
end
