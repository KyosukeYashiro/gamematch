class ChangeUserDefault < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :profile, :text, default: '未設定'
    change_column :users, :fee, :integer, default: '未設定'
    change_column :users, :value, :integer, default: '評価なし'
    change_column :users, :face, :boolean, default: false
    change_column :users, :image, :string, default: '未設定'

  end

  def down
    change_column :users, :profile, :text
    change_column :users, :fee, :integer
    change_column :users, :value, :integer
    change_column :users, :face, :boolean
    change_column :users, :image, :string
  end
end
