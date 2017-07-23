class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :message
      t.integer :parent_id
      t.references :user, foreign_key: true
      t.references :image, foreign_key: true

      t.timestamps
    end
  end
end
