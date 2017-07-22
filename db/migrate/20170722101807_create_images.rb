class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
    	t.string     :title,    null: false, default: "Image"
    	t.references :user,     index: true
      t.timestamps
    end
  end
end
