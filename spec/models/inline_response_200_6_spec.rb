=begin
#API（証拠金取引所）

#本APIを利用することにより、取り扱っている銘柄一覧の取得、ローソク足データの取得、板の取得、歩値の取得、注文、残高照会といった操作を行う事ができます。 ## 留意事項 - APIキーはお客様のアカウント情報と紐付いております。もし第三者がお客様のAPIキーを知った場合、遠隔で売買注文の操作が可能となります。APIキーを第三者へ渡す事はセキュリティリスクを鑑みお控えください。 - 他社が提供するAPI機能を使用した自動売買取引ツールは、ご自身の判断と責任でご利用ください。 - リクエストパラメーターやレスポンスの日時についてはミリ秒のtimestamp(Unix Time)を用います。 - 日時の範囲検索は「以上・未満」で検索します。 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for RakutenTrading::InlineResponse2006
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2006' do
  before do
    # run before each test
    @instance = RakutenTrading::InlineResponse2006.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2006' do
    it 'should create an instance of InlineResponse2006' do
      expect(@instance).to be_instance_of(RakutenTrading::InlineResponse2006)
    end
  end
  describe 'test attribute "floating_profit"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "floating_position_fee"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "remaining_floating_position_fee"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "floating_trade_fee"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "floating_profit_all"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "used_margin"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "necessary_margin"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "balance"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "equity"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "margin_maintenance_percent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "usable_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "withdrawable_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "withdrawal_amount_reserved"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
