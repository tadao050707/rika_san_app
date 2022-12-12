class CreateHealths < ActiveRecord::Migration[6.1]
  def change
    create_table :healths do |t|

      t.string :responsibility
      t.date :record_in_at
      t.time :time
      t.float :body_temperature
      t.integer :blood_pressure_up
      t.integer :blood_pressure_down
      t.integer :pulse
      t.integer :breakfast
      t.integer :lunch
      t.integer :snack
      t.integer :dinner
      t.integer :before_sleep
      t.integer :morning_medicine
      t.integer :daytime_medicine
      t.integer :snack_medicine
      t.integer :evening_medicine
      t.integer :sleep_medicine
      t.time :bath_time
      t.integer :bath_division
      t.string :caregiver
      t.float :height
      t.float :body_weight
      t.text :daytime
      t.string :daytime_staff
      t.text :night
      t.string :night_staff
      t.text :contact
      t.string :contact_staff

      t.timestamps
    end
  end
end
