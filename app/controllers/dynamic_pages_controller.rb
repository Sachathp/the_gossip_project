class DynamicPagesController < ApplicationController
  def welcome
  end

  def show
    @gossips = Gossip.find(params[:id])
  end

  def user_page
    @user = User.find(params[:id])
  end
end
