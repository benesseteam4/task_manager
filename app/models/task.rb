class Task < ApplicationRecord
  # belongs_to :student
  # belongs_to :teacher
  belongs_to :taskable, polymorphic: true
end
