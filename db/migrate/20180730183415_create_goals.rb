class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :body
      t.string :date
      t.string :pitfalls
      t.string :tactics
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
