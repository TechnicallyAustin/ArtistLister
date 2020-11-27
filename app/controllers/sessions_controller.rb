class SessionsController < ApplicationController
  def new
    session = Session.new 
  end

  def create
    @user = User.find(params[:id])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end

  end

  def login
    @user = User.find(params[:id])
    session[:user_id] = @user.id
  end

  def welcome
  end
  
  def destroy
    session[:user_id]= []
  end

end
