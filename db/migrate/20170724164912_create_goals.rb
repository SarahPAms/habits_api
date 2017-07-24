class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.references :habits, foreign_key: true

      t.timestamps
    end
  end
end
