class UsersController < ApplicationController
    
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration succesful."
      redirect_to root_url      # TODO: map this URL
    else
      render :action => 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User was successfully updated.'
      redirect_to @user
    else
      render :action => "edit" 
    end
  end
end
