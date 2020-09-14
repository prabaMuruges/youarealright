class Goal < ApplicationRecord
  belongs_to :relationship
  belongs_to :creator
end
