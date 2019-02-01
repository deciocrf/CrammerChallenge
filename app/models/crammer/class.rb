class Crammer::Class < ApplicationRecord

  belongs_to :user, inverse_of: :crammer_classes
  has_many :placement
 

  validates :name, :user, presence: true
end
