class CreateInterestsVolunteers < ActiveRecord::Migration
  def change
    create_table :interests_volunteers, id: false do |t|
    	t.belongs_to :volunteer, index: true
    	t.belongs_to :interest, index: true
    end
  end
end
