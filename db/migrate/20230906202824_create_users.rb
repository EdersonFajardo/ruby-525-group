class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :birthdate
      t.string :email
      t.string :address
      t.string :housing_type
      t.string :country
      t.string :department
      t.string :city

      t.timestamps
    end
  end
end
