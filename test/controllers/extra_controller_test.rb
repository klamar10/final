require 'test_helper'

class ExtraControllerTest < ActionDispatch::IntegrationTest
  test "should get cotizacion" do
    get extra_cotizacion_url
    assert_response :success
  end

end
