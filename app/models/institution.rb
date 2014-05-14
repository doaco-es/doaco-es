# -*- encoding : utf-8 -*-
class Institution < ActiveRecord::Base

  validates_presence_of :name, :item

  has_one :user, as: :role

  def self.search(name)
    if name
      where("name like ? or item like ?", "%#{name}%", "%#{name}%")
    else
      all
    end
  end
end
