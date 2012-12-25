class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :speaker_name
      t.string :speaker_email
      t.string :speaker_company
      t.string :speaker_job_title
      t.text :notes
      t.string :slides_url
      t.string :speaker_twitter
      t.string :speaker_facebook
      t.string :speaker_linkedin
      t.string :speaker_googleplus
      t.string :speaker_github
      t.string :speaker_website
      t.date :scheduled_for
      t.boolean :confirmed

      t.timestamps
    end
  end
end
