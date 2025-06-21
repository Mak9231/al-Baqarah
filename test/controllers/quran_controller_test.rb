require "test_helper"

class QuranControllerTest < ActionDispatch::IntegrationTest
  test "should get surahs" do
    get quran_surahs_url
    assert_response :success
  end

  test "should get subjects" do
    get quran_subjects_url
    assert_response :success
  end

  test "should get arabic" do
    get quran_arabic_url
    assert_response :success
  end
end
