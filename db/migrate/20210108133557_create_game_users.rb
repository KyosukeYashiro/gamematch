class CreateGameUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :game_users do |t|
      t.references :user, index: true, foreign_key: true
      t.references :game, index: true, foreign_key: true

      t.timestamps
    end
  end
end
