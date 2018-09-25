require 'test_helper'

class DriverTest < ActiveSupport::TestCase

  def setup
    @Driver = Driver.new(username: "ExUsername", password: "ExPassword")
  end

  test "Driver should exist" do
    assert @Driver.valid?
  end

  test "Username should be present" do
    @Driver.username = ""
    assert_not @Driver.valid?
  end

  test "Password should be present" do
    @Driver.password = ""
    assert_not @Driver.valid?
  end

  



  # test "the truth" do
  #   assert true
  # end
end
