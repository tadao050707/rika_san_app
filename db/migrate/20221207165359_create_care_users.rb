class CreateCareUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :care_users do |t|

      t.string :name
      t.date :birthday
      t.integer :age
      t.integer :sex
      t.text :image
      t.integer :availability
      t.integer :division

      t.timestamps
    end
  end
end
