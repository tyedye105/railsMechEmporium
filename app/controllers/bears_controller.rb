class BearsController < ApplicationController
  def index
    @bears = Bear.all
  end
  def show
  end
  def new
  end
  def edit
  end
end
