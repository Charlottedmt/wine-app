class WineMakersController < ApplicationController

def index
  @wine_makers = WineMaker.all
end

def show
  @wine_maker = WineMaker.find(params[:id])
end

def new
  @wine_maker = WineMaker.new
end

def create
  @wine_maker = WineMaker.new(wine_maker_params)
  if @wine_maker.save
    redirect_to wine_makers_path
  else
    render :new
  end
end

private

def wine_maker_params
  params.require(:wine_maker).permit(:name, :country)
end
end
