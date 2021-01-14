class RemoveIntegerFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :integer, :string
  end
end
