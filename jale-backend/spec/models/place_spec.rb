require 'rails_helper'

RSpec.describe Place, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to be_valid
    end

    it "is not valid without a name" do
      place = Place.new(
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without a description" do
      place = Place.new(
        place_name: "Test Place",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without a cost" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without a valid email" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "invalidemail",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without a valid website URL" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "invalidurl",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without a valid phone format" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "12345678", # Invalid format
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without a score" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid with a score less than 1" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 0, # Invalid score
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid with a score greater than 5" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 6, # Invalid score
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without an address" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_time_open: Time.now,
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without an opening time" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_close: Time.now + 1.hour
      )
      expect(place).to_not be_valid
    end

    it "is not valid without a closing time" do
      place = Place.new(
        place_name: "Test Place",
        place_desc: "Test Description",
        place_cost: 100,
        place_email: "test@example.com",
        place_score: 4,
        place_phone: "1234-5678",
        place_website: "https://example.com",
        place_address: "123 Test St",
        place_time_open: Time.now
      )
      expect(place).to_not be_valid
    end
  end

  describe "associations" do
    it "has many place_categories" do
      association = described_class.reflect_on_association(:place_categories)
      expect(association.macro).to eq :has_many
      expect(association.options[:dependent]).to eq :destroy
    end

    it "has many categories through place_categories" do
      association = described_class.reflect_on_association(:categories)
      expect(association.macro).to eq :has_many
      expect(association.options[:through]).to eq :place_categories
    end

    it "has many place_reviews" do
      association = described_class.reflect_on_association(:place_reviews)
      expect(association.macro).to eq :has_many
      expect(association.options[:dependent]).to eq :destroy
    end

    it "has many reviews through place_reviews" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.macro).to eq :has_many
      expect(association.options[:through]).to eq :place_reviews
    end

    it "has many photos" do
      association = described_class.reflect_on_association(:photos)
      expect(association.macro).to eq :has_many
    end

    it "has one place_location" do
      association = described_class.reflect_on_association(:place_location)
      expect(association.macro).to eq :has_one
    end
  end
end