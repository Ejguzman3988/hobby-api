class CreateTimers < ActiveRecord::Migration[6.0]
  def change
    create_table :timers do |t|
      t.belongs_to :user
      t.string :name
      t.string :category
      t.datetime :start_time
      t.datetime :end_time
      t.float :total_time
      t.string :date

      t.timestamps 
    end
  end
end
