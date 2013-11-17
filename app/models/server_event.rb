class ServerEvent < ActiveRecord::Base

  # config will_paginate
  self.per_page = 10

  before_save {|e|
    logger.info 'in before_save of ServerEvent '+e.inspect
    e.vakz = 'initial' if e.vakz.blank?
    e.va1kz = 'initial' if e.va1kz.blank?
  }

  attr_accessible :name, :vakz, :va1kz

  scope :by_name, :order => :name

end

#
# vim: fdm=syntax
#
