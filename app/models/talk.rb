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
    :speaker_github,
    :speaker_website,
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

  def speaker_networks
    networks = []

    networks << { name: "website", id: self.speaker_website, pretty_name: "Website"} unless self.speaker_website.blank?
    networks << { name: "twitter", id: self.speaker_twitter, pretty_name: "@#{ self.speaker_twitter }"} unless self.speaker_twitter.blank?
    networks << { name: "facebook", id: self.speaker_facebook, pretty_name: "Facebook"} unless self.speaker_facebook.blank?
    networks << { name: "googleplus", id: self.speaker_googleplus, pretty_name: "Google+"} unless self.speaker_googleplus.blank?
    networks << { name: "linkedin", id: self.speaker_linkedin, pretty_name: "LinkedIn"} unless self.speaker_linkedin.blank?
    networks << { name: "github", id: self.speaker_github, pretty_name: "Github"} unless self.speaker_github.blank?
    networks << { name: "mail", id: self.speaker_email, pretty_name: "Email"} unless self.speaker_email.blank?

    return networks
  end

  def vacant?
    self.title.downcase == "vacant"
  end

end
