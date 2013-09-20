class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :restaurant
      t.string :open_monday
      t.string :close_monday
      t.string :open_tuesday
      t.string :close_tuesday
      t.string :open_wednesday
      t.string :close_wednesday
      t.string :open_thursday
      t.string :close_thursday
      t.string :open_friday
      t.string :close_friday
      t.string :open_saturday
      t.string :close_saturday
      t.string :open_sunday
      t.string :close_sunday

      t.timestamps
    end
    add_index :schedules, :restaurant_id
  end
end
