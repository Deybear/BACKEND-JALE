require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url, as: :json
    assert_response :success
  end

  test "should create event" do
    assert_difference("Event.count") do
      post events_url, params: { event: { event_address: @event.event_address, event_cost: @event.event_cost, event_date_start: @event.event_date_start, event_desc: @event.event_desc, event_email: @event.event_email, event_name: @event.event_name, event_phone: @event.event_phone, event_photo: @event.event_photo, event_time_start: @event.event_time_start, event_website: @event.event_website } }, as: :json
    end

    assert_response :created
  end

  test "should show event" do
    get event_url(@event), as: :json
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { event_address: @event.event_address, event_cost: @event.event_cost, event_date_start: @event.event_date_start, event_desc: @event.event_desc, event_email: @event.event_email, event_name: @event.event_name, event_phone: @event.event_phone, event_photo: @event.event_photo, event_time_start: @event.event_time_start, event_website: @event.event_website } }, as: :json
    assert_response :success
  end

  test "should destroy event" do
    assert_difference("Event.count", -1) do
      delete event_url(@event), as: :json
    end

    assert_response :no_content
  end
end
