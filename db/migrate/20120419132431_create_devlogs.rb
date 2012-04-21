class CreateDevlogs < ActiveRecord::Migration
  def change
    create_table :devlogs do |t|
      t.string :url
      t.text :problem
      t.text :fixing

      t.timestamps
    end
  end
end
