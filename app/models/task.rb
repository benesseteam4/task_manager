class Task < ApplicationRecord
  # belongs_to :student
  # belongs_to :teacher
  belongs_to :taskable, polymorphic: true
  
  # validates :title, presence: true
  # validates :name, presence: true
  # validates :conten
end
