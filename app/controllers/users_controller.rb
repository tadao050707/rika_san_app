class UsersController < ApplicationController
  def show
    @user = current_user
  end

  # def new
  #   @user = User.new
  #   @care_users = CareUser.where(user_id: nil) #ケアユーザの中にユーザが入っていない人を探してくる
  # end

end
