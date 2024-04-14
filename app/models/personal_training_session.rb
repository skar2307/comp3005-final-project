class PersonalTrainingSession < ApplicationRecord
  belongs_to :member_id
  belongs_to :trainer_id
end
