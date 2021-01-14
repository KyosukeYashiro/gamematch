class ChangeImageOfUsers < ActiveRecord::Migration[6.0]
  def up
    change_column :users, :image, :string, default: 'https://everydayicons.jp/wp/wp-content/themes/everydayicons/icons/thumbs/ei-picture.png'
  end
  def down
    change_column :users, :image, :string, default: '未設定'
  end
end

