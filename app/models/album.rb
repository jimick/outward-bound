require "squeel"

class Album < ActiveRecord::Base
  has_many :photos, as: :album, dependent: :destroy
  belongs_to :cover_photo, class_name: "Photo"

  default_scope -> { order{created_at.asc} }

  validates_presence_of :name_hr, :name_en

  after_initialize :build_cover_photo, unless: :cover_photo

  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :cover_photo

  def to_s
    name_en
  end
end
