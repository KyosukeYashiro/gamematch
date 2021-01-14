class ChangeFaceOfUsers < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :face, :string, default: '無'
  end
  def down
    change_column :users, :face, :string, default: '未設定'
  end
end
