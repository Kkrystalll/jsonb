class CreatePunchTimes < ActiveRecord::Migration[7.0]
  def change
    create_table :punch_times do |t|
      t.datetime :punch_time
      t.string :punch_type
      t.jsonb :punch_note

      t.timestamps
    end
  end
end
