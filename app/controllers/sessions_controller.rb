class SessionsController < ApplicationController
  def new

  end

  def create

    if false
      # ユーザー認証成功
    else
      # ユーザー認証失敗
      flash[:error] = "Authentication failed"
      render 'new'
    end
  end

  def destroy

  end
end
