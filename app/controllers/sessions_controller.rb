class SessionsController < ApplicationController

  include SessionsHelper

  def new
    if signed_in?
      flash[:success] = "You have already sign in."
      redirect_to root_url
    end
  end

  def create
    user = User.find_by(email: params[:email].downcase)

    if user != nil && user.authenticate(params[:password])
      # ユーザー認証成功
      flash.now[:success] = "Authentication success"
      sign_in user
      redirect_back_or user
    else
      # ユーザー認証失敗
      flash.now[:error] = "Authentication failed:Invalid"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
