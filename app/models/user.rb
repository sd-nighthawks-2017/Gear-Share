class User < ApplicationRecord
  has_many :reservations
  has_many :items
  has_many :rented_items, {:class_name => "Item", :foreign_key => "renter_id"}

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
