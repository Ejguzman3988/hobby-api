class CreateTimers < ActiveRecord::Migration[6.0]
  def change
    create_table :timers do |t|
      t.belongs_to :user
      t.string :name
      t.string :category
      t.datetime :start_time, default: DateTime.now.in_time_zone(ActiveSupport::TimeZone.new("Eastern Time (US & Canada)"))
      t.datetime :end_time
      t.float :total_time
      t.string :date, default: Date.today.in_time_zone(ActiveSupport::TimeZone.new("Eastern Time (US & Canada)")).to_s.split(" ")[0]

      t.timestamps 
    end
  end
end
