class AddNoteToRsvps < ActiveRecord::Migration
  def change
    add_column :rsvps, :note, :text
  end
end
