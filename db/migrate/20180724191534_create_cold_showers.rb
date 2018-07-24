class CreateColdShowers < ActiveRecord::Migration[5.2]
  def change
    create_table :cold_showers do |t|
      t.string :time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
