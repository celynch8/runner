class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.date :dob
      t.string :gender
      t.string :location
      t.integer :age

      t.timestamps
    end
  end
end
