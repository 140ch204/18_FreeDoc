# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


# Seed pour Specialty
Specialty.destroy_all
Specialty.create!(name: "Generalist")
Specialty.create!(name: "Dentist")
Specialty.create!(name: "Yeutist")
Specialty.create!(name: "Ventrist")


# Seed pour City
City.destroy_all
100.times do
  City.create!(name: Faker::Address.city)
end

# Seed pour Doctor
Doctor.destroy_all
100.times do
  Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name , zip_code: Faker::Address.zip_code, city: City.all.sample) # specialty: ["Generalist", "Dentist", "Eyeist", "Footist"].sample,
end

# Seed pour Patient
Patient.destroy_all
100.times do
  Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: City.all.sample)
end

# Seed pour Appointement
Appointment.destroy_all
100.times do
  Appointment.create!(date: Faker::Date.in_date_period(month: 2), doctor: Doctor.all.sample, patient: Patient.all.sample, city: City.all.sample)
end


# Seed pour HaveSpecialty
HaveSpecialty.destroy_all
100.times do
  HaveSpecialty.create!( specialty: Specialty.all.sample, doctor: Doctor.all.sample)
end