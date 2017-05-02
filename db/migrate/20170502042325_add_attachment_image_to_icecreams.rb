class AddAttachmentImageToIcecreams < ActiveRecord::Migration
  def self.up
    change_table :icecreams do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :icecreams, :image
  end
end
