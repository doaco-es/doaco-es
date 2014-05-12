# -*- encoding : utf-8 -*-
class Institution < ActiveRecord::Base

  validates_presence_of :name
end
