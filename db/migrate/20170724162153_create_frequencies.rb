class CreateFrequencies < ActiveRecord::Migration[5.0]
  def change
    create_table :frequencies do |t|
      t.date :start
      t.date :end
      t.boolean :completed
      t.integer :times_completed

      t.timestamps
    end
  end
end
