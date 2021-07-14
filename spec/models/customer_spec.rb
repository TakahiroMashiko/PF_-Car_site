require 'rails_helper'

RSpec.describe Customer, type: :model do

  before do
    @customer = build(:customer)
  end

  describe 'Validation' do

    it 'NG if email is empty' do
      @customer.email = ''
      expect(@customer.valid?).to eq(false)
    end

    it 'NG if last_name is empty' do
      @customer.last_name = ''
      expect(@customer.valid?).to eq(false)
    end

    it 'NG if first_name is empty' do
      @customer.first_name = ''
      expect(@customer.valid?).to eq(false)
    end

    it 'NG if last_name_kana is empty' do
      @customer.last_name_kana = ''
      expect(@customer.valid?).to eq(false)
    end

    it 'NG if first_name_kana is empty' do
      @customer.first_name_kana = ''
      expect(@customer.valid?).to eq(false)
    end

    it 'NG if phone_number is empty' do
      @customer.phone_number = ''
      expect(@customer.valid?).to eq(false)
    end

    it 'NG if is_active is empty' do
      @customer.is_active = ''
      expect(@customer.valid?).to eq(false)
    end

  end
end
