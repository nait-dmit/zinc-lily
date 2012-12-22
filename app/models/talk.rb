class Talk < ActiveRecord::Base
  # require 'digest/md5'

  attr_accessible(
    :confirmed,
    :scheduled_for,
    :title,
    :notes,
    :slides_url,
    :speaker_name,
    :speaker_company,
    :speaker_job_title,
    :speaker_email,
    :speaker_facebook,
    :speaker_googleplus,
    :speaker_linkedin,
    :speaker_twitter
  )



  def speaker_gravatar_img
    default_img = "http://placehold.it/200&text=image+not+available"

    if self.speaker_email.blank?

      return default_img
    else
      key = self.speaker_email.downcase.strip
      hash = Digest::MD5.hexdigest(key)

      return "http://www.gravatar.com/avatar/#{ hash }?s=200&d=#{ URI::encode(default_img) }"
    end
  end

  def speaker_gravatar_hash
    unless self.speaker_email.blank?
      key = self.speaker_email.downcase.strip
      return Digest::MD5.hexdigest(key)
    end
  end

  def speaker_name_and_title
    output = self.speaker_name
    output << ", #{ self.speaker_job_title } at #{ self.speaker_company }" if !speaker_job_title.blank? && !speaker_company.blank?
    output << " from #{ self.speaker_company }" if speaker_job_title.blank? && !speaker_company.blank?
    output << ", #{ self.speaker_job_title }" if !speaker_job_title.blank? && speaker_company.blank?

    return output
  end

  def vacant?
    self.title.downcase == "vacant"
  end

end
