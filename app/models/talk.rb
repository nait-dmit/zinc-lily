class Talk < ActiveRecord::Base
  attr_accessible(
    :confirmed,
    :scheduled_for,
    :title,
    :notes,
    :slides_url,
    :speaker_email,
    :speaker_facebook,
    :speaker_googleplus,
    :speaker_linkedin,
    :speaker_name,
    :speaker_twitter
  )
end
