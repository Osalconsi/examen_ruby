class Vacant < ApplicationRecord
  belongs_to :company
  belongs_to :region
  belongs_to :modality
  has_many :people
  has_many :people, through: :postulations
end
