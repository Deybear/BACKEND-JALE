require "test_helper"

class PlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @place = places(:one)
  end

  test "should get index" do
    get places_url, as: :json
    assert_response :success
  end

  test "should create place" do
    assert_difference("Place.count") do
      post places_url, params: { place: { place_address: @place.place_address, place_cost: @place.place_cost, place_desc: @place.place_desc, place_email: @place.place_email, place_name: @place.place_name, place_phone: @place.place_phone, place_score: @place.place_score, place_time_close: @place.place_time_close, place_time_open: @place.place_time_open, place_website: @place.place_website } }, as: :json
    end

    assert_response :created
  end

  test "should show place" do
    get place_url(@place), as: :json
    assert_response :success
  end

  test "should update place" do
    patch place_url(@place), params: { place: { place_address: @place.place_address, place_cost: @place.place_cost, place_desc: @place.place_desc, place_email: @place.place_email, place_name: @place.place_name, place_phone: @place.place_phone, place_score: @place.place_score, place_time_close: @place.place_time_close, place_time_open: @place.place_time_open, place_website: @place.place_website } }, as: :json
    assert_response :success
  end

  test "should destroy place" do
    assert_difference("Place.count", -1) do
      delete place_url(@place), as: :json
    end

    assert_response :no_content
  end
end
