class AddAttachmentImageToPosts < ActiveRecord::Migration[7.1]
  def self.up
    change_table :posts do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
    end
  end

  def self.down
    remove_column :posts, :image_file_name
    remove_column :posts, :image_content_type
    remove_column :posts, :image_file_size
    remove_column :posts, :image_updated_at
  end
end
