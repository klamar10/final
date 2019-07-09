require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get servicio" do
    get menu_servicio_url
    assert_response :success
  end

  test "should get nosotros" do
    get menu_nosotros_url
    assert_response :success
  end

end
