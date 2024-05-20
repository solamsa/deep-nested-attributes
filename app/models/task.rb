class Task < ApplicationRecord
  belongs_to :project
  has_many :patches
  accepts_nested_attributes_for :patches, 
    reject_if: :all_blank, allow_destroy: true
end
