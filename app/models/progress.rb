class Progress < ApplicationRecord
  belongs_to :action
  belongs_to :made_by
end
