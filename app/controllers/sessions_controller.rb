# frozen_string_literal: true
class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new; end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to '/welcome'
    else
      session[:user_id] = nil
      redirect_to '/welcome'
    end
  end

  def welcome
    @users = User.paginate(page: params[:page], per_page: 2).order(created_at: :desc)
    respond_to do |format|
      format.html
    end
  end
end
