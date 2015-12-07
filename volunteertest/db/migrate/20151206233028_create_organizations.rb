class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.string :photo_url
      t.text :description
      t.string :contact

      t.timestamps null: false
    end
  end
end
