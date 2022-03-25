require "test_helper"

class Areas::CursosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get areas_cursos_index_url
    assert_response :success
  end
end
