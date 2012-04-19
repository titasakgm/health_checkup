# coding: utf-8
class Section < ActiveRecord::Base
  validates_presence_of :section, :message => "กรุณากรอกข้อมูล"
  has_many :staffs
end
