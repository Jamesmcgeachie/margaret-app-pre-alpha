class ChangeEventTimeDataTypeFromDateTimeToString < ActiveRecord::Migration
  def change
  	change_column :opportunities, :event_time, :string
  end
end
