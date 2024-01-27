require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(
      user_email: "test@example.com",
      user_name: "testuser",
      user_lastname: "testlastname",
      user_birthdate: Date.today,
      password_digest: "password"
    )
    expect(user).to be_valid
  end

  it "is not valid without an email" do
    user = User.new(user_name: "testuser", user_lastname: "testlastname", user_birthdate: Date.today, password_digest: "password")
    expect(user).to_not be_valid
  end

  it "is not valid without a name" do
    user = User.new(user_email: "test@example.com", user_lastname: "testlastname", user_birthdate: Date.today, password_digest: "password")
    expect(user).to_not be_valid
  end

  it "is not valid without a lastname" do
    user = User.new(user_email: "test@example.com", user_name: "testuser", user_birthdate: Date.today, password_digest: "password")
    expect(user).to_not be_valid
  end

  it "is not valid without a birthdate" do
    user = User.new(user_email: "test@example.com", user_name: "testuser", user_lastname: "testlastname", password_digest: "password")
    expect(user).to_not be_valid
  end

  it "is not valid without a password_digest" do
    user = User.new(user_email: "test@example.com", user_name: "testuser", user_lastname: "testlastname", user_birthdate: Date.today)
    expect(user).to_not be_valid
  end

  it "is not valid with a short password_digest" do
    user = User.new(
      user_email: "test@example.com",
      user_name: "testuser",
      user_lastname: "testlastname",
      user_birthdate: Date.today,
      password_digest: "12345"
    )
    expect(user).to_not be_valid
  end

  it "sets default user type after initialization" do
    user = User.new
    expect(user.user_type_id).to eq(2)
  end

  describe "associations" do
    it "has many place_reviews" do
      association = described_class.reflect_on_association(:place_reviews)
      expect(association.macro).to eq :has_many
    end

    it "has many reviews through place_reviews" do
      association = described_class.reflect_on_association(:reviews)
      expect(association.macro).to eq :has_many
      expect(association.options[:through]).to eq :place_reviews
    end

    it "has many user_tours" do
      association = described_class.reflect_on_association(:user_tours)
      expect(association.macro).to eq :has_many
    end

    it "has many places through user_tours" do
      association = described_class.reflect_on_association(:places)
      expect(association.macro).to eq :has_many
      expect(association.options[:through]).to eq :user_tours
    end

    it "has one user_type" do
      association = described_class.reflect_on_association(:user_type)
      expect(association.macro).to eq :has_one
    end
  end
end