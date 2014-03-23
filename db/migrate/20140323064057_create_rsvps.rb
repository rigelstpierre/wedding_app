class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.text :name
      t.text :email
      t.boolean :rsvp

      t.timestamps
    end
  end
end
