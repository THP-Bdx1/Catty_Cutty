class HomeController < ApplicationController
  def index
  end
  
  def show
      @item=Item.find(params[:id])
  end

end
