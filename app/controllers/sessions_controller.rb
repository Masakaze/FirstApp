class SessionsController < ApplicationController

  include SessionsHelper

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user != nil && user.authenticate(params[:session][:password])
      # ユーザー認証成功
      flash.now[:success] = "Authentication success"
      sign_in user
      redirect_to user
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
