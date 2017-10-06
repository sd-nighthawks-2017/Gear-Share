class Item < ApplicationRecord

  has_attached_file :image, styles: {small: "64x64", med: "100x100", large: "200x200#"},
  :default_url => "pit_default.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :user

  has_many :reservations

  def self.search(search)
      where("name ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%")
  end

end
