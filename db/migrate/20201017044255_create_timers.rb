class CreateTimers < ActiveRecord::Migration[6.0]
  def change
    create_table :timers do |t|
      t.string :name
      t.string :category
      t.datetime :start_time, default: DateTime.now
      t.datetime :end_time
      t.float :total_time
      t.string :date, default: Date.today

      t.timestamps 
    end
  end
end
