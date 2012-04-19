# coding: utf-8
class Prefix1 < ActiveRecord::Base
  validates_presence_of :prefix1, :message => "กรุณากรอกข้อมูล"
  has_many :staffs
end
