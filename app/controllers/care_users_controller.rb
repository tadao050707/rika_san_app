class CareUsersController < ApplicationController

  def index
    @care_users = CareUser.all
  end

  def new
    @care_user = CareUser.new
  end
end
