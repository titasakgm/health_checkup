# coding: utf-8
class Position < ActiveRecord::Base
  validates_presence_of :position, :message => "กรุณากรอกข้อมูล"
  has_many :staffs
end
