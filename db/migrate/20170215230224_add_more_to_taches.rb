class AddMoreToTaches < ActiveRecord::Migration[5.0]
  def change
    add_column :taches, :more, :string
  end
end
