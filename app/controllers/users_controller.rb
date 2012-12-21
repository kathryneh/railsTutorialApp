class UsersController < ApplicationController
  def show #define instance variable for show.html.erb
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user #redirects to the user show page
  	else
  		render 'new'
  	end
  end
end
