class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :status
      t.decimal :total
      t.integer :seats
      t.references :profile, foreign_key: true
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
