class CreateJobApps < ActiveRecord::Migration[5.2]
  def change
    create_table :job_apps do |t|
      t.string :job_title
      t.string :position
      t.string :status
      t.datetime :activity
      t.references :user_job_app, foreign_key: true

      t.timestamps
    end
  end
end
