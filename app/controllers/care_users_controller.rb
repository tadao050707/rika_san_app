class CareUsersController < ApplicationController

  def index
    @care_users = CareUser.all
  end
end
