class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts user_params
    @user = User.find_by(email: user_params[:email]).try(:authenticate, user_params[:password])
    unless @user
      @user = User.create(user_params)
      session[:current_user_id] = @user.id
      redirect_to "users/registration/#{session[:current_user_id]}"
    end
    session[:current_user_id] = @user.id
    redirect_to "/users/#{session[:current_user_id]}"
  end

  def registration
    @user = User.find(session[:current_user_id])
  end

  def update
    @user = User.find(session[:current_user_id])
    @user.update(user_params)
    redirect_to "/users/#{session[:current_user_id]}"
  end

  def show
    @user_to_view = User.find(params[:id])
  end

  def index
    redirect_to "/users/#{session[:current_user_id]}"
  end

  def destroy
    session.delete(:current_user_id)
    redirect_to root_url
  end

  private

  def user_params
    params.require(:user).permit(:email,:password,:website,:fullname)
  end

end
