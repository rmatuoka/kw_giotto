require 'test_helper'

class ProductCatalogTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ProductCatalog.new.valid?
  end
end
