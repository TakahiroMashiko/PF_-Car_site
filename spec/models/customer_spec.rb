require 'rails_helper'

RSpec.describe Customer, type: :model do

  it "名前とメールアドレスとパスワードがあれば登録できる" do
    expect(FactoryBot.create(:customer)).to be_valid
  end

  it "名前がなければ登録できない" do
    expect(FactoryBot.build(:customer, name: "")).to_not be_valid
  end

  it "メールアドレスがなければ登録できない" do
    expect(FactoryBot.build(:customer, email: "")).to_not be_valid
  end

  it "メールアドレスが重複していたら登録できない"

  it "パスワードがなければ登録できない"

  it "パスワードが暗号化されている"

end
