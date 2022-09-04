class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.integer :salary
      t.string :character_name
      t.integer :movie_id
      t.integer :actor_id
    end
  end
end
