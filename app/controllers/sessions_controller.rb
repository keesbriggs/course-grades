class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def login
  end

  def logout
    sessions[:user_id] = nil
    redirect_to '/sessions/welcome'
  end

  def create
     @user = User.find_by(email: params[:email])
     if @user
        session[:user_id] = @user.id
        redirect_to '/users#show'
     else
        redirect_to '/sessions/new'
     end
  end
  def page_requires_login

  end
end
