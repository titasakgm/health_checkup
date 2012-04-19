class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :card_type
      t.string :card_code
      t.string :cid
      t.integer :sex
      t.integer :prefix1_id
      t.integer :prefix2_id
      t.string :fname
      t.string :lname
      t.integer :position_id
      t.integer :job_id
      t.integer :section_id
      t.date :birth_date
      t.string :tel
      t.string :mobile
      t.string :email
      t.integer :parent_id

      t.timestamps
    end
  end
end
