class Appointment < ApplicationRecord
  belongs_to :doctors
  belongs_to :users

end
