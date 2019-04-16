class CreateJobHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :job_histories do |t|
      t.string :company
      t.string :position
      t.datetime :start_date
      t.datetime :end_date
      t.references :resume, foreign_key: true

      t.timestamps
    end
  end
end
