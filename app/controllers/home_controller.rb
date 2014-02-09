class HomeController < ApplicationController
  def index
    @models = RadThermModel.all
  end
end
