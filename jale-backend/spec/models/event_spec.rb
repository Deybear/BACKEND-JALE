require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to be_valid
    end

    it "is not valid without a name" do
      event = Event.new(
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a description" do
      event = Event.new(
        event_name: "Test Event",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a cost" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a valid email" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a valid photo" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a valid phone format" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a valid website URL" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_address: "123 Test St",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without an address" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_date_start: Date.today,
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a start date" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_time_start: Time.now
      )
      expect(event).to_not be_valid
    end

    it "is not valid without a start time" do
      event = Event.new(
        event_name: "Test Event",
        event_desc: "Test Description",
        event_cost: 100,
        event_email: "test@example.com",
        event_photo: "test_photo.jpg",
        event_phone: "1234-5678",
        event_website: "https://example.com",
        event_address: "123 Test St",
        event_date_start: Date.today
      )
      expect(event).to_not be_valid
    end
  end

  describe "associations" do
    it "has many event_categories" do
      association = described_class.reflect_on_association(:event_categories)
      expect(association.macro).to eq :has_many
      expect(association.options[:dependent]).to eq :destroy
    end

    it "has many categories through event_categories" do
      association = described_class.reflect_on_association(:categories)
      expect(association.macro).to eq :has_many
      expect(association.options[:through]).to eq :event_categories
    end
  end
end