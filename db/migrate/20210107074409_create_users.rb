class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.text :profile
      t.float :value
      t.boolean :face
      t.string :fee
      t.string :integer
      t.string :pass

      t.timestamps
    end
  end
end
