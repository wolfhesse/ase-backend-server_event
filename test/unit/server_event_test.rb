require 'test_helper'

class ServerEventTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test 'server event has a name' do
    se = ServerEvent.new
    se.name='hallo'
    assert_equal 'hallo',se.name
  end

  test 'server event has a vakz' do
    se  = ServerEvent.new
    se.vakz='eins'
    assert_equal 'eins',se.vakz
  end

  test 'server event has a va1kz' do
    se = ServerEvent.new
    se.va1kz = 'eins'
    assert_equal 'eins',se.va1kz
  end

  test 'server event has a vakz of initial when created' do
    se = ServerEvent.create! :name => 'sample'
    assert_equal 'initial', se.vakz
  end
end

# vim: fdm=syntax
