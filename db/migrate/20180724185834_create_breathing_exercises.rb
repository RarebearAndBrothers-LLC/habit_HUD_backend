class CreateBreathingExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :breathing_exercises do |t|
      t.string :round1
      t.string :round2
      t.string :round3
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
