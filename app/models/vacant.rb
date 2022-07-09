class Vacant < ApplicationRecord
  belongs_to :company
  belongs_to :region
  belongs_to :modality
end
