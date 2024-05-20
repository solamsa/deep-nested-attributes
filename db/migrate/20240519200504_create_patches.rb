class CreatePatches < ActiveRecord::Migration[7.1]
  def change
    create_table :patches, id: :uuid do |t|
      t.uuid :task_id
      t.string :note
      t.timestamps
    end
    add_foreign_key :patches , :tasks, column: :task_id, on_delete: :cascade
  end
end
