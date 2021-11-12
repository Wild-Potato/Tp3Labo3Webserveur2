class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.integer :isAdmin

      t.timestamps
    end
  end
end
