class BottlesController < ApplicationController

  def index
    @bottles = Bottle.all
  end

  def show
    @bottle = Bottle.find(params[:id])
  end

  def new
    @bottle = Bottle.new
    @wine_maker = WineMaker.new
  end

  def create
    @bottle = Bottle.new(bottle_params)
    if @bottle.save
      redirect_to bottles_path
    else
      render :new
    end
  end


  private

  def bottle_params
    params.require(:bottle).permit(:name, :year, :grapes, :description, :wine_maker_id)
  end
end
