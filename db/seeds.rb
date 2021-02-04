Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all

50.times do
  city = City.create([{cities: Faker::Address.city}])
end

8.times do
  Doctor.create([{
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  specialty: ["allergologie", "andrologie", "anesthésiologie", "cardiologie", "chirurgie cardiaque", "chirurgie plastique", "chirurgie générale", "chirurgie gynécologique", "chirurgie maxillo-faciale", "chirurgie oculaire", "chirurgie orale", "chirurgie pédiatrique", "chirurgie thoracique", "chirurgie vasculaire", "chirurgie viscérale", "neurochirurgie", "dermatologie", "endocrinologie", "gastro-entérologie", "gériatrie", "gynécologie", "hématologie", "hépatologie", "immunologie", "infectiologie", "médecine générale", "médecine palliative", "néonatologie", "néphrologie", "neurologie", "obstétrique", "odontologie", "oncologie", "ophtalmologie", "orthopédie", "otorhinolaryngologie", "pédiatrie", "pneumologie", "podologie", "psychiatrie", "radiologie", "radiothérapie", "rhumatologie", "urologie"].sample,
  zip_code: Faker::Number.number(digits: 5),
  city_id: City.all.sample.id
  }])
end

35.times do
  Patient.create([{
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  city_id: City.all.sample.id
  }])
end

50.times do
  Appointment.create([{
  date: Faker::Time.forward(days: 90, period: :day),
  doctor_id: Doctor.all.sample.id,
  patient_id: Patient.all.sample.id,
  city_id: City.all.sample.id
  }])
end

puts "Patients et Docteurs et RDV créés"
