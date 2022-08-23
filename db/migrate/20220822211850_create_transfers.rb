class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.float :value
      t.string :payer
      t.string :receiver
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
