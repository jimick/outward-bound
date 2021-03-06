require "squeel"

class Photo < ActiveRecord::Base
  belongs_to :album, polymorphic: true

  mount_uploader :file, PhotoUploader

  default_scope -> { order{created_at.asc} }

  validates_presence_of :file

  def title
    File.basename(file.url, ".*").titleize
  end

  def present?
    file.present?
  end
end
