class Proposal < ActiveRecord::Base

  attr_accessible(
    :company_name,
    :primary_contact_name,
    :primary_contact_title,
    :primary_contact_phone,
    :primary_contact_email,
    :secondary_contact_name,
    :secondary_contact_title,
    :secondary_contact_phone,
    :secondary_contact_email,
    :nature_of_business,
    :project_name,
    :project_purpose,
    :project_goals,
    :project_constraints,
    :project_audience,
    :project_content_management,
    :student_skills,
    :client_availability,
    :client_resources,
    :timeline_first_week,
    :timeline_delays,
    :timeline_client_availability,
    :deployment_budget,
    :deployment_webhost_details,
    :deployment_domain_name
  )

  validates_presence_of(
    :company_name,
    :primary_contact_name,
    :primary_contact_email,
    :project_name
  )


end
