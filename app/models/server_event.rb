class ServerEvent < ActiveRecord::Base

  before_save {|e|
    logger.info 'in before_save of ServerEvent '+e.inspect
    e.vakz = 'initial' if e.vakz.empty?
    e.va1kz = 'initial' if e.va1kz.empty?
  }

  attr_accessible :name, :vakz, :va1kz


end

#
# vim: fdm=syntax
#
