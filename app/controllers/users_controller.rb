class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @q = User.ransack(params[:q])
    @pagy, @users = pagy(@q.result.order(created_at: :desc), items: 5)
  end

  def show
    @user = User.find(params[:id])

    render layout: false
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to current_user, notice: "Account was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    current_user.destroy

    redirect_to root_path, notice: "Account was successfully deleted."
  end

  private

  def user_params
    params.require(:user).permit(:avatar, :name, :email, :password, :password_confirmation)
  end
end
