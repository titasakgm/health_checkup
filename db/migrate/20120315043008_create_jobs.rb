class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job

      t.timestamps
    end
  end
end
