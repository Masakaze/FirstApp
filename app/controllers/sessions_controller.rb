class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user != nil && user.authenticate(params[:session][:password])
      # ユーザー認証成功
      flash[:success] = "Authentication success"
      render 'new'
    else
      # ユーザー認証失敗
      flash[:error] = "Authentication failed"
      render 'new'
    end
  end

  def destroy

  end
end
