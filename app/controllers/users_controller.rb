class UsersController < ApplicationController
  def create
    user = User.create(params[:user])
    
    unless user.id.nil?
      session[user.id]
      redirect_to user_url(user)
    else
      redirect_to new_user_url
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
    @current_user =  User.find(session[:user_id]) if session[:user_id]
  end

  def update
    user = User.find(params[:id])
    if user.update_attributes(name: params[:user][:name])
      redirect_to user_url(user)
    else
      redirect_to edit_user_url(user)
    end
  end
end
