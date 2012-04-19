class CreatePrefix1s < ActiveRecord::Migration
  def change
    create_table :prefix1s do |t|
      t.string :prefix1

      t.timestamps
    end
  end
end
