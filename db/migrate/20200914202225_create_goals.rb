class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.references :relationship, null: false, foreign_key: true
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
