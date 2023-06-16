class CreateDesks < ActiveRecord::Migration[7.0]
  def change
    create_table :desks do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :place

      t.timestamps
    end
  end
end
