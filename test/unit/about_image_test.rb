require 'test_helper'

class AboutImageTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert AboutImage.new.valid?
  end
end
