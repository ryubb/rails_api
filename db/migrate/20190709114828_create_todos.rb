class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :content
      t.string :tag
      t.string :label

      t.timestamps
    end
  end
end
