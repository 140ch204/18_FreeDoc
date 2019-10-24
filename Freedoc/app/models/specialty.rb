class Specialty < ApplicationRecord
  has_many :doctors, through: :have_specialties
end
