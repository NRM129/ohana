require 'rails_helper'

RSpec.describe Note, type: :model do
  before do
    @note = FactoryBot.build(:note)
  end

  describe 'ユーザー新規登録' do

    context '新規登録できないとき' do
      it 'record_dateが空では登録できない' do
        @note.record_date = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "利用日を入力してください"
      end

      it 'weather_idが空では登録できない' do
        @note.weather_id = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "天候を選択してください"
      end

      it 'responsible_personが空では登録できない' do
        @note.responsible_person = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "担当者を入力してください"
      end

      it 'utilization_timeが空では登録できない' do
        @note.utilization_time = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "利用時間を入力してください"
      end

      it 'body_temperatureが空では登録できない' do
        @note.body_temperature = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "体温を入力してください"
      end

      it 'pulse が空では登録できない' do
        @note.pulse = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "脈拍を入力してください"
      end

      it 'dbpが空では登録できない' do
        @note.dbp = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "最低血圧を入力してください"
      end

      it 'sbpが空では登録できない' do
        @note.sbp = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "最高血圧を入力してください"
      end

      it 'taking_medicine_idが空では登録できない' do
        @note.taking_medicine_id = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "服薬を選択してください"
      end

      it 'usage_type_idが空では登録できない' do
        @note.usage_type_id = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "利用種類を選択してください"
      end

      it 'bathing_idが空では登録できない' do
        @note.bathing_id = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "入浴を選択してください"
      end


      it 'facility_userが空では登録できない' do
        @note.facility_user = ''
        @note.valid?
        expect(@note.errors.full_messages).to include "利用者を入力してください"
      end


    end
  end
end
