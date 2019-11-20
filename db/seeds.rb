roles = ['Doctor', 'Patient']
10.times do 
  doctor = Doctor.create(
    name: Faker::Science.scientist,
    specialty: Faker::Job.key_skill
  )

    10.times do 
      user = User.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
      )

      Appointment.create(
        role: roles.sample,
        doctor_id: doctor.id,
        user_id: user.id,
        date: Faker::Date.forward(days: 12)
        reason: Faker::TvShows::MichaelScott.quote
        )
    end
  end