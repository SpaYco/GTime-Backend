class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.integer :memory
      t.integer :intelligence
      t.integer :social
      t.string :link

      t.timestamps
    end
  end
end
