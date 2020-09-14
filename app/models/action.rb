class Action < ApplicationRecord
  belongs_to :goal
  belongs_to :creator
end
