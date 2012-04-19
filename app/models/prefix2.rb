# coding: utf-8
class Prefix2 < ActiveRecord::Base
  validates_presence_of :prefix2, :message => "กรุณากรอกข้อมูล"
  has_many :staffs
end
