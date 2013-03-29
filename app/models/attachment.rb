class Attachment < ActiveRecord::Base
  has_attachment :storage => :file_system, :path_prefix => 'public/attachments', :max_size => 100.megabyte, :chmod => 0777
  belongs_to :resource, :polymorphic => true
  validates_as_attachment
end
