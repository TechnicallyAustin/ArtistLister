class SessionsController < ApplicationController
  def new
    session = Session.new 
  end

  def create
    @user = User.find(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end

  end

  def login
    
  end

  def welcome
  end
  
  def destroy
  end

end
