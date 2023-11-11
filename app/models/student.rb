class Student < ApplicationRecord
  has_many :tasks, as: :taskable
end
