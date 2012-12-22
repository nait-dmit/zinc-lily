# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121221014955) do

  create_table "proposals", :force => true do |t|
    t.string   "company_name"
    t.string   "primary_contact_name"
    t.string   "primary_contact_title"
    t.string   "primary_contact_phone"
    t.string   "primary_contact_email"
    t.string   "secondary_contact_name"
    t.string   "secondary_contact_title"
    t.string   "secondary_contact_phone"
    t.string   "secondary_contact_email"
    t.text     "nature_of_business"
    t.string   "project_name"
    t.text     "project_purpose"
    t.text     "project_goals"
    t.text     "project_constraints"
    t.text     "project_audience"
    t.text     "project_content_management"
    t.text     "student_skills"
    t.text     "client_availability"
    t.text     "client_resources"
    t.text     "timeline_first_week"
    t.text     "timeline_delays"
    t.text     "timeline_client_availability"
    t.text     "deployment_budget"
    t.text     "deployment_webhost_details"
    t.text     "deployment_domain_name"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "talks", :force => true do |t|
    t.string   "title"
    t.string   "speaker_name"
    t.string   "speaker_email"
    t.string   "speaker_company"
    t.string   "speaker_job_title"
    t.text     "notes"
    t.string   "slides_url"
    t.string   "speaker_twitter"
    t.string   "speaker_facebook"
    t.string   "speaker_linkedin"
    t.string   "speaker_googleplus"
    t.date     "scheduled_for"
    t.boolean  "confirmed"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
