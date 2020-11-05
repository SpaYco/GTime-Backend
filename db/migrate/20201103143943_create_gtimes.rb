class CreateGtimes < ActiveRecord::Migration[6.0]
  def change
    create_table :gtimes do |t|
      t.references :user
      t.references :category
      t.integer :startTime
      t.integer :endTime

      t.timestamps
    end
  end
end
