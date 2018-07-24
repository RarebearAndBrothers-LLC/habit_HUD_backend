class CreateGuidedMeditations < ActiveRecord::Migration[5.2]
  def change
    create_table :guided_meditations do |t|
      t.string :before
      t.string :after
      t.string :insights
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
