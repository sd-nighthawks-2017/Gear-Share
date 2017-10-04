class User < ApplicationRecord
  has_many :reservations
  has_many :items
  has_many :rented_items, {:class_name => "Item", :foreign_key => "renter_id"}
  has_many :reviews
  has_many :tasks



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  geocoded_by :location
  after_validation :geocode

  def average_rating
    if reviews.count == 0
      0
    else
      reviews.sum(:rating)/reviews.count
    end
  end

  def self.search(search)
      where("first_name ILIKE ? OR last_name ILIKE ? OR username ILIKE? OR location ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
