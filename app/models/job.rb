# coding: utf-8
class Job < ActiveRecord::Base
  validates_presence_of :job, :message => "กรุณากรอกข้อมูล"
  has_many :staffs
end
