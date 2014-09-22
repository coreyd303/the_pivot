class Resume < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader

  belongs_to :user
  belongs_to :order
  has_many :listings, through: :order

end
