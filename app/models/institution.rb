# -*- encoding : utf-8 -*-
class Institution < ActiveRecord::Base

  validates_presence_of :name, :item

  has_one :user, as: :role

  has_many :donations
  
  scope :search, ->(name = '') { where("name like ?", "%#{name}%") }

end
