class Crammer::Placement < ApplicationRecord
  belongs_to :user
  belongs_to :crammer_class

  validates :user, :crammer_class, presence: true
end
