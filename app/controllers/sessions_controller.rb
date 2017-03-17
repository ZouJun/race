class SessionsController < ApplicationController

  layout 'application'

  def create
    admin = Admin.authenticated(params[:login], params[:password])
    if admin
        session[:admin_id] = admin.id
        redirect_to admin_home_url, notice: '登陆成功!'
    else
      return redirect_to :back, notice: '账号或密码错误!'
    end
  end

  def destroy
    if session[:admin_id]
      session[:admin_id] = nil
    end

    redirect_to sign_in_url
  end
end