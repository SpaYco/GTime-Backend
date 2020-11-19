class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.references :user
      t.references :game
      t.integer :hours
      t.integer :memory
      t.integer :intelligence
      t.integer :social

      t.timestamps
    end
  end
end
