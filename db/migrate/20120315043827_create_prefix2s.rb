class CreatePrefix2s < ActiveRecord::Migration
  def change
    create_table :prefix2s do |t|
      t.string :prefix2

      t.timestamps
    end
  end
end
