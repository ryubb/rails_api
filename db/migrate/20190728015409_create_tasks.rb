class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :remark
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
