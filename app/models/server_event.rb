class ServerEvent < ActiveRecord::Base

  before_save {|e|
    logger.info 'in before_save of ServerEvent '+e.inspect
    e.vakz = 'initial' if e.vakz.blank?
    e.va1kz = 'initial' if e.va1kz.blank?
  }

  attr_accessible :name, :vakz, :va1kz


end

#
# vim: fdm=syntax
#
