require 'test_helper'

class Admin::ProductCatalogsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ProductCatalog.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ProductCatalog.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ProductCatalog.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_product_catalog_url(assigns(:product_catalog))
  end

  def test_edit
    get :edit, :id => ProductCatalog.first
    assert_template 'edit'
  end

  def test_update_invalid
    ProductCatalog.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ProductCatalog.first
    assert_template 'edit'
  end

  def test_update_valid
    ProductCatalog.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ProductCatalog.first
    assert_redirected_to admin_product_catalog_url(assigns(:product_catalog))
  end

  def test_destroy
    product_catalog = ProductCatalog.first
    delete :destroy, :id => product_catalog
    assert_redirected_to admin_product_catalogs_url
    assert !ProductCatalog.exists?(product_catalog.id)
  end
end
