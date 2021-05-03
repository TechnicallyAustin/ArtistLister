require 'pry'
require "users_helper"
class SessionsController < ApplicationController

  def new
  end

  def create
    #binding.pry
    if auth #facebook login
      
        @user.find_or_create_by(email: auth["info"]["email"]) do |u|
          u.full_name = auth["info"]["name"]
          #Secure Random generates a secrue 10 digit hexadecimal string that will be encrypted by bcrypt
          u.password = SecureRandom.hex(10)
        end
    end
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      alert = "It looks like those credentials are Invalid, can you try again?"
      redirect_to login_path, notice: alert 
    end
  end

      

  def login
    binding.pry
    @user = User.find_by(email: params[:email])
    session[:user_id] = @user.id
  end

  def welcome
  end
  
  def destroy
    session.delete :user_id
    redirect_to "/"
  end

  private
  
  def auth
    request.env['omniauth.auth']
  end

end
