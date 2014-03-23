20.times do |i|
  rsvp = Rsvp.create(name: "Test Name #{i}", email:  "email#{i}@example.com", rsvp: true)
end
