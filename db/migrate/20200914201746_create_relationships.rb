class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.references :partner_1, null: false, foreign_key: true, foreign_key: { to_table: :users }
      t.references :partner_2, null: false, foreign_key: true, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
