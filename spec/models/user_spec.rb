require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do

    context '新規登録できないとき' do
      it 'nameが空では登録できない' do
        @user.name = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "お名前を入力してください"
      end

      it 'emailが空では登録できない' do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Eメールを入力してください"
      end

      it 'emailは@を含まないと登録できない' do
        @user.email = 'user.jp'
        @user.valid?
        expect(@user.errors.full_messages).to include 'Eメールは不正な値です'
      end

      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワードを入力してください"
      end

      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = 'a123456'
        @user.password_confirmation = 'a1234567'
        @user.valid?
        expect(@user.errors.full_messages).to include "パスワード（確認用）とパスワードの入力が一致しません"
      end

      it 'passwordが英字のみのパスワードでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは半角英数を両方含む必要があります'
      end

      it 'passwordが数字のみのパスワードでは登録できない' do
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは半角英数を両方含む必要があります'
      end

      it 'passwordが全角文字を含むパスワードでは登録できない' do
        @user.password = 'あ11111'
        @user.password_confirmation = 'あ111111'
        @user.valid?
        expect(@user.errors.full_messages).to include 'パスワードは半角英数を両方含む必要があります'
      end

      it 'facility_userが空では登録できない' do
        @user.facility_user = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "利用者様のお名前を入力してください"
      end

      it 'facility_userが半角では登録できない' do
        @user.facility_user = 'aaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include 'お名前は不正な値です'
      end

      it 'phone_numberが空では登録できない' do
        @user.phone_number = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "電話番号(緊急連絡先)を入力してください"
      end

      it 'phone_numberが半角では登録できない' do
        @user.phone_number = 'aaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include '電話番号(緊急連絡先)は不正な値です'
      end

      it 'birthdayが空では登録できない' do
        @user.birthday = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "生年月日を入力してください"
      end

      it 'blood_typeが空では登録できない' do
        @user.blood_type = ''
        @user.valid?
        expect(@user.errors.full_messages).to include "Blood typeを入力してください"
      end
    end
  end
end
