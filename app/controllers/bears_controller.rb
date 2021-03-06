class BearsController < ApplicationController
  def index
    @bears = Bear.all
  end
  def show
    @bear = Bear.find(params[:id])
  end
  def new
    @bear = Bear.new
  end
  def create
    @bear = Bear.new(bear_params)
      if @bear.save
        flash[:notice] = "You have succesfully listed your bear on the market!"
        redirect_to bears_path
      else
        render :new
      end
  end
  def edit
    @bear = Bear.find(params[:id])
  end
  def update
    @bear = Bear.find(params[:id])
      if @bear.update(bear_params)
        flash[:notice] = "You have succefully edited this bear"
        redirect_to bear_path(@bear)
      else
      render :edit
    end
  end
  def destroy
    @bear = Bear.find(params[:id])
    @bear.destroy
    flash[:notice] ="The bear has been removed from the listing."
    redirect_to bears_path
  end

private
  def bear_params
    params.require(:bear).permit(:name, :cost, :country, :forte, :description)
  end

end
