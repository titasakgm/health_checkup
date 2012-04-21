# coding: utf-8
class Staff < ActiveRecord::Base
  belongs_to :job
  belongs_to :position
  belongs_to :prefix1
  belongs_to :prefix2
  belongs_to :section
  
  belongs_to :boss,
      :class_name => "Staff",
      :foreign_key => "parent_id"
    
  has_many :child,
      :class_name => "Staff",
      :foreign_key => "parent_id"

  def full_name
    "#{fname} #{lname}"
  end
end
