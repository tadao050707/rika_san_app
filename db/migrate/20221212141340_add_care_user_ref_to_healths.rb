class AddCareUserRefToHealths < ActiveRecord::Migration[6.1]
  def change
    add_reference :healths, :care_user, foreign_key: true
  end
end
