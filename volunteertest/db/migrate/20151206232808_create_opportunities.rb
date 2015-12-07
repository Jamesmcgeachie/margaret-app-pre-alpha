class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.string :name
      t.text :description
      t.string :location
      t.datetime :event_time
      t.string :contact
      t.integer :organization_id

      t.timestamps null: false
    end
  end
end
