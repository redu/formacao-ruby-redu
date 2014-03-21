class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :edition
      t.references :user, index: true

      t.timestamps
    end
  end
end
