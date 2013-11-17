class ServerEvent < ActiveRecord::Base

  before_save {|e|
    logger.info 'in before_save of ServerEvent '+e.inspect
    e.vakz = 'initial' if e.vakz.empty? unless e.vakz.nil?
    e.va1kz = 'initial' if e.va1kz.empty? unless e.va1kz.nil?

    # this handles a case with testing: mocked stuff TODO
    if e.vakz.nil?
      e.vakz = 'initial'
    end

    if e.va1kz.nil?
      e.va1kz = 'initial'
    end

  }

  attr_accessible :name, :vakz, :va1kz


end

#
# vim: fdm=syntax
#
