class CreateArrangements < ActiveRecord::Migration
  def change
    create_table :arrangements do |t|
      t.datetime :volunteering_time
      t.belongs_to :volunteer, index: true, foreign_key: true
      t.belongs_to :opportunity, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
