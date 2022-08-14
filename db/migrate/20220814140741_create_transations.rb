class CreateTransations < ActiveRecord::Migration[5.2]
  def change
    create_table :transations do |t|
      t.string :name
      t.float :value
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
