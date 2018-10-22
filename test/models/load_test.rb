require 'test_helper'

class LoadTest < ActiveSupport::TestCase

  # test associations
  should belong_to(:washer)
  should belong_to(:driver)
end
