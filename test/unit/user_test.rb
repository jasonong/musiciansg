require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  
  should_have_many :roles
  should_validate_presence_of :password, :email
  should_not_allow_values_for :email, 'user', 'test', 'user@test'
  should_allow_values_for :email, 'user@test.com', 'user@test.com.sg', 'user@test.gov.sg'

end
