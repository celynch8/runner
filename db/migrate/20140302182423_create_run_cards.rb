class CreateRunCards < ActiveRecord::Migration
  def change
    create_table :run_cards do |t|
      t.float :pace
      t.float :distance
      t.string :type
      t.string :day
      t.string :time
      t.string :target_distance
      t.string :target_race

      t.timestamps
    end
  end
end
