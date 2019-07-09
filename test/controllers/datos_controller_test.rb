require 'test_helper'

class DatosControllerTest < ActionDispatch::IntegrationTest
  test "should get personales" do
    get datos_personales_url
    assert_response :success
  end

end
