class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|

      # Business Information
      t.string :company_name

      t.string :primary_contact_name
      t.string :primary_contact_title
      t.string :primary_contact_phone
      t.string :primary_contact_email

      t.string :secondary_contact_name
      t.string :secondary_contact_title
      t.string :secondary_contact_phone
      t.string :secondary_contact_email

      t.text :nature_of_business

      # Project Information
      t.string :project_name
      t.text :project_purpose
      t.text :project_goals
      t.text :project_constraints
      t.text :project_audience
      t.text :project_content_management

      # Student Requirements
      t.text :student_skills

      # Client Responsibilities
      t.text :client_availability
      t.text :client_resources

      # Capstone Timeline
      t.text :timeline_first_week
      t.text :timeline_delays
      t.text :timeline_client_availability

      # Project Deployment
      t.text :deployment_budget
      t.text :deployment_webhost_details
      t.text :deployment_domain_name

      t.timestamps
    end
  end
end
