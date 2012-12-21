class CreateTalks < ActiveRecord::Migration
  def change
    create_table :talks do |t|
      t.string :title
      t.string :speaker_name
      t.string :speaker_email
      t.text :notes
      t.string :slides_url
      t.string :speaker_twitter
      t.string :speaker_facebook
      t.string :speaker_linkedin
      t.string :speaker_googleplus
      t.date :scheduled_for
      t.boolean :confirmed

      t.timestamps
    end
  end
end
