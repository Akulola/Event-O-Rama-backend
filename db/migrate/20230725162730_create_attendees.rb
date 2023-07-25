class CreateAttendees < ActiveRecord::Migration[6.1]
  def change
    create_table :attendees do |t|
      t.integer :event_id
      t.integer :user_id
      t.boolean :confirmed, default: false
      t.timestamps
    end
  end
end
