vacancy_name = "You?"

talks = [
  {
    scheduled_for: "Jan 22, 2012",
    title: "Notes From a Freelancer",
    speaker_name: "Lindsay Clark",
    speaker_company: "Lift Interactive",
    speaker_job_title: "Designer/Developer",
    speaker_email: "hello@curlybird.ca",
    speaker_facebook: "lindsayecho",
    speaker_twitter: "lindsayecho",
    confirmed: true
  },
  {
    scheduled_for: "Jan 22, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  },

  {
    scheduled_for: "Jan 29, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  },
  {
    scheduled_for: "Jan 29, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  },

  {
    scheduled_for: "Feb 5, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  },
  {
    scheduled_for: "Feb 5, 2012",
    title: "Vacant",
    speaker_name: vacancy_name,
    confirmed: true
  }
]

talks.each do |talk|
  Talk.create(talk)
end
