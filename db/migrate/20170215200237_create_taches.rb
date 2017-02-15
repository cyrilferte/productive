class CreateTaches < ActiveRecord::Migration[5.0]
  def change
    create_table :taches do |t|
      t.string :name
      t.string :theme
      t.datetime :date
      t.integer :timedo

      t.timestamps
    end
  end
end
