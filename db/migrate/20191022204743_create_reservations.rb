class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :movie, null: false, foreign_key: true
      t.string :email, null: false
      t.string :name, null: false
      t.string :identification, null: false
      t.date :reservation_date, null: false

      t.timestamps
    end
  end
end
