# -*- encoding : utf-8 -*-
class Donation < ActiveRecord::Base

  validates_presence_of :item
end
