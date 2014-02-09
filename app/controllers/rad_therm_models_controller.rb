class RadThermModelsController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @models = RadThermModel.all
  end

  def show
    @model = RadThermModel.find(params[:id])
  end
end
