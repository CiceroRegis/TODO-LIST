class AddCompletedAtToTodoLists < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_lists, :completed, :boolean
  end
end
