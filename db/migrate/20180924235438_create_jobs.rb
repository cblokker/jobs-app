class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.references :employer
      t.integer :job_applications_count, default: 0
      t.timestamps
    end
  end
end
