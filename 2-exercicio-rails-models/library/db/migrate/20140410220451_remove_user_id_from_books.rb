class RemoveUserIdFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :user_id, :integer
  end
end
