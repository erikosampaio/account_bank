class RemoveNumberFromAccount < ActiveRecord::Migration[5.2]
  def change
    remove_column :accounts, :number, :integer
  end
end
