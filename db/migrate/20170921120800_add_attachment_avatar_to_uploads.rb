class AddAttachmentAvatarToUploads < ActiveRecord::Migration[5.1]
  def self.up
    change_table :uploads do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :uploads, :avatar
  end
end
