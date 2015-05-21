class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :table
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end

    #add_index :reservations, :table, unique: true
    #add_index :reservations, :start, unique: true
  end
end
