require 'rails_helper'

RSpec.describe Customer, type: :model do
  context "バリデーションのtest" do
    it "name, email, password が有効であること" do
      customer = build(:customer)
      expect(customer).to be_valid
    end
    it "name が存在せず無効であること" do
      customer = build(:customer, name: nil)
      expect(customer).not_to be_valid
    end
    it "emailが存在せず無効であること" do
      customer = build(:customer, email: nil)
      expect(customer).not_to be_valid
    end
    it "emailが重複し無効であること" do
      create(:customer, email: "test@example.com")
      customer = build(:customer, email: "test@example.com")
      expect(customer).not_to be_valid
    end
  end
end
