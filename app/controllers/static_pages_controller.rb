class StaticPagesController < ApplicationController
  before_filter :authenticate_user!, except: [:home]

  def activate
  	@user = User.find(params[:id])
  	if @user.update_attribute(approved: true)
  	  redirect_to "something"
  	else
  	  render "something"
  	end 
  end
end