class AddAgendaToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :agenda, :text
  end
end
