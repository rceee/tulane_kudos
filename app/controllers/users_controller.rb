class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def give_kudos
    target_user = User.find(params[:id])
    if current_user.kudos_count > 0 && target_user.kudos.where(from_id: current_user.id).empty?
      grant_kudo(target_user)
      else if current_user.kudos_count < 1
        flash = { error: "Out of Kudos for the week" }
        else
          flash = { error: "Already gave a kudo to this user" }
      end
    end
    redirect_to "/users/", flash: flash

end

  private

  def grant_kudo(target_user)
    Kudo.create(user_id: target_user.id, from_id: current_user.id)
    current_user.kudos_count = current_user.kudos_count - 1
    current_user.save!
  end
end
