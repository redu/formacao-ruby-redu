class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :user, index: true
      t.references :book, index: true
      t.boolean :outdated

      t.timestamps
    end
  end
end
