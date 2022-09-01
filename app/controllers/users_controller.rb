class UsersController < ApplicationController
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
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
