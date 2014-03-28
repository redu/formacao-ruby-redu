class AddColumnCompleteNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :complete_name, :string
  end
end
