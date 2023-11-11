class Teacher < ApplicationRecord
  has_many :tasks, as: :taskable
end
