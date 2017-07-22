class AddPictureColumnsToImages < ActiveRecord::Migration[5.1]
  def up
    add_attachment :images, :picture
  end

  def down
    remove_attachment :images, :picture
  end
end
