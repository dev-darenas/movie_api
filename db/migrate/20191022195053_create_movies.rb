class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :url
      t.integer :days_presentation, default: 0

      t.timestamps
    end
  end
end
