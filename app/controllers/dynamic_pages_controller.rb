class DynamicPagesController < ApplicationController
  def welcome
  end

  def show
    @gossips = Gossip.find(params[:id]) 
  end
end
