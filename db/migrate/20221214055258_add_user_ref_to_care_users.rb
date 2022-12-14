class AddUserRefToCareUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :care_users, :user, foreign_key: true
  end
end
