class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.text :bio
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
