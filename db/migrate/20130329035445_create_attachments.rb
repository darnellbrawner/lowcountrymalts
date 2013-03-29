class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :description
      t.string :filename
      t.integer :size
      t.string :content_type
      t.boolean :active
      t.string :resource_type
      t.integer :resource_id

      t.timestamps
    end
  end
end
