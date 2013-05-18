require 'test_helper'

class IndexControllerTest < ActionController::TestCase
  test "should get quienes_somos" do
    get :quienes_somos
    assert_response :success
  end

  test "should get contacto" do
    get :contacto
    assert_response :success
  end

end
