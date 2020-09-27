class CreateProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :progresses do |t|
      t.string :description
      t.references :action, null: false, foreign_key: true
      t.integer :percentage
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
