class CareUsersController < ApplicationController

  def index
    @care_users = CareUser.all
  end

  def new
    @care_user = CareUser.new
  end

  def create
    @care_user = CareUser.new(care_user_params)
    if @care_user.save
      redirect_to care_users_path, notice: "利用者登録完了！"
    else
      render :new
    end
  end

  def show
    @care_user = CareUser.find(params[:id])
  end

  def edit
    @care_user = CareUser.find(params[:id])
  end


  private

  def care_user_params
    params.require(:care_user).permit(:name, :birthday, :age, :sex, :availability, :division, :image).merge(division: params[:care_user][:division].to_i)
  end

end
