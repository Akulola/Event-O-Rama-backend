class AddNameSurnameEmailToAttendees < ActiveRecord::Migration[6.1]
  def change
    add_column :attendees, :name, :string
    add_column :attendees, :surname, :string
    add_column :attendees, :email, :string
  end
end
