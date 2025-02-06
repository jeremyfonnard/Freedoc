# Supprimer les données existantes
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

# Créer des instances de Doctor
doctor1 = Doctor.create(first_name: "Alice", last_name: "Johnson", specialty: "Dermatology", zip_code: "67890")
doctor2 = Doctor.create(first_name: "Bob", last_name: "Smith", specialty: "Pediatrics", zip_code: "54321")

# Créer des instances de Patient
patient1 = Patient.create(first_name: "Charlie", last_name: "Brown")
patient2 = Patient.create(first_name: "Daisy", last_name: "Miller")

# Créer des rendez-vous
Appointment.create(date: Time.now, doctor: doctor1, patient: patient1)
Appointment.create(date: Time.now + 1.day, doctor: doctor2, patient: patient2)
Appointment.create(date: Time.now + 2.days, doctor: doctor1, patient: patient2)

puts "Seeds created successfully!"