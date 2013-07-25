require 'test_helper'

class Admin::AboutImagesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => AboutImage.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    AboutImage.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    AboutImage.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_about_image_url(assigns(:about_image))
  end

  def test_edit
    get :edit, :id => AboutImage.first
    assert_template 'edit'
  end

  def test_update_invalid
    AboutImage.any_instance.stubs(:valid?).returns(false)
    put :update, :id => AboutImage.first
    assert_template 'edit'
  end

  def test_update_valid
    AboutImage.any_instance.stubs(:valid?).returns(true)
    put :update, :id => AboutImage.first
    assert_redirected_to admin_about_image_url(assigns(:about_image))
  end

  def test_destroy
    about_image = AboutImage.first
    delete :destroy, :id => about_image
    assert_redirected_to admin_about_images_url
    assert !AboutImage.exists?(about_image.id)
  end
end
