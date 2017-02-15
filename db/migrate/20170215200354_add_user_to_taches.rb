class AddUserToTaches < ActiveRecord::Migration[5.0]
  def change
    add_reference :taches, :user, foreign_key: true
  end
end
