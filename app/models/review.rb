class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewer, {:class_name => "User", :foreign_key => :reviewer_id}

  validates :rating, numericality: {less_than_or_equal_to: 5}
end
