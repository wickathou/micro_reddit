class UsersController < ApplicationController
  include UsersHelper
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = 'user successfully created'
      redirect_to @user
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
