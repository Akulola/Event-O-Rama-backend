class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.belongs_to :user, index: true
      t.string :image_url
      t.timestamps  
    end
  end
end
