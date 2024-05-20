class Project < ApplicationRecord
  has_many :tasks
  has_many :patches , through: :tasks
  accepts_nested_attributes_for :tasks, 
    reject_if: :all_blank, allow_destroy: true

    delegate :patches,  to: :tasks, prefix: true
end
