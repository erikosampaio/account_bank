class AddFieldsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :number_account, :integer, default: 1000
    add_column :users, :balance, :float, default: 0
    add_column :users, :situation, :boolean, default: true
    add_reference :users, :user, foreign_key: true
  end
end
