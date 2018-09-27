class CreateJobApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :job_applications do |t|
      t.references :user, unique: true, null: false
      t.references :job, unique: true, null: false
      t.timestamps
    end
  end
end
