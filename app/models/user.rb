class User < ApplicationRecord
  has_many :relationships, foreign_key: :partner_1_id
  has_many :progresses
  has_many :goals
  has_many :partners, through: :relationships, foreign_key: :partner_2_id
end
