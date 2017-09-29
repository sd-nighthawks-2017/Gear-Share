class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :item
  belongs_to :renter, {:class_name => "User", :foreign_key => :renter_id}

  has_many :dialogs

end
