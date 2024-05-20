class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks, id: :uuid do |t|
      t.uuid :project_id
      t.string :description
      t.timestamps
    end
    add_foreign_key :tasks, :projects, column: :project_id, on_delete: :cascade
  end
end
