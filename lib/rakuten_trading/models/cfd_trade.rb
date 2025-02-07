=begin
#API（証拠金取引所）

#本APIを利用することにより、取り扱っている銘柄一覧の取得、ローソク足データの取得、板の取得、歩値の取得、注文、残高照会といった操作を行う事ができます。 ## 留意事項 - APIキーはお客様のアカウント情報と紐付いております。もし第三者がお客様のAPIキーを知った場合、遠隔で売買注文の操作が可能となります。APIキーを第三者へ渡す事はセキュリティリスクを鑑みお控えください。 - 他社が提供するAPI機能を使用した自動売買取引ツールは、ご自身の判断と責任でご利用ください。 - リクエストパラメーターやレスポンスの日時についてはミリ秒のtimestamp(Unix Time)を用います。 - 日時の範囲検索は「以上・未満」で検索します。 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

require 'date'

module RakutenTrading
  class CfdTrade
    # トレードID
    attr_accessor :id

    # シンボルID
    attr_accessor :symbol_id

    # 新規注文または決済注文
    attr_accessor :order_behavior

    # 新規約定または決済約定
    attr_accessor :trade_behavior

    # 売買方向
    attr_accessor :order_side

    # 注文方法
    attr_accessor :order_pattern

    # 執行条件
    attr_accessor :order_type

    # 約定アクション
    attr_accessor :trade_action

    # 約定価格
    attr_accessor :price

    # 約定数量
    attr_accessor :amount

    # 売買損益
    attr_accessor :profit

    # 約定手数料
    attr_accessor :fee

    # 実現建玉管理料(円)
    attr_accessor :position_fee

    # 決済損益(円)
    attr_accessor :close_trade_profit

    # 約定代金(円)
    attr_accessor :asset_amount

    # 建値
    attr_accessor :open_price

    # 円換算価格（約定時点）
    attr_accessor :jpy_conversion

    # 注文ID
    attr_accessor :order_id

    # 建玉ID
    attr_accessor :position_id

    # 取引日
    attr_accessor :business_date

    # 作成日時
    attr_accessor :created_at

    # 更新日時
    attr_accessor :updated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'symbol_id' => :'symbolId',
        :'order_behavior' => :'orderBehavior',
        :'trade_behavior' => :'tradeBehavior',
        :'order_side' => :'orderSide',
        :'order_pattern' => :'orderPattern',
        :'order_type' => :'orderType',
        :'trade_action' => :'tradeAction',
        :'price' => :'price',
        :'amount' => :'amount',
        :'profit' => :'profit',
        :'fee' => :'fee',
        :'position_fee' => :'positionFee',
        :'close_trade_profit' => :'closeTradeProfit',
        :'asset_amount' => :'assetAmount',
        :'open_price' => :'openPrice',
        :'jpy_conversion' => :'jpyConversion',
        :'order_id' => :'orderId',
        :'position_id' => :'positionId',
        :'business_date' => :'businessDate',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'symbol_id' => :'Object',
        :'order_behavior' => :'Object',
        :'trade_behavior' => :'Object',
        :'order_side' => :'Object',
        :'order_pattern' => :'Object',
        :'order_type' => :'Object',
        :'trade_action' => :'Object',
        :'price' => :'Object',
        :'amount' => :'Object',
        :'profit' => :'Object',
        :'fee' => :'Object',
        :'position_fee' => :'Object',
        :'close_trade_profit' => :'Object',
        :'asset_amount' => :'Object',
        :'open_price' => :'Object',
        :'jpy_conversion' => :'Object',
        :'order_id' => :'Object',
        :'position_id' => :'Object',
        :'business_date' => :'Object',
        :'created_at' => :'Object',
        :'updated_at' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `RakutenTrading::CfdTrade` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `RakutenTrading::CfdTrade`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'symbol_id')
        self.symbol_id = attributes[:'symbol_id']
      end

      if attributes.key?(:'order_behavior')
        self.order_behavior = attributes[:'order_behavior']
      end

      if attributes.key?(:'trade_behavior')
        self.trade_behavior = attributes[:'trade_behavior']
      end

      if attributes.key?(:'order_side')
        self.order_side = attributes[:'order_side']
      end

      if attributes.key?(:'order_pattern')
        self.order_pattern = attributes[:'order_pattern']
      end

      if attributes.key?(:'order_type')
        self.order_type = attributes[:'order_type']
      end

      if attributes.key?(:'trade_action')
        self.trade_action = attributes[:'trade_action']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'profit')
        self.profit = attributes[:'profit']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'position_fee')
        self.position_fee = attributes[:'position_fee']
      end

      if attributes.key?(:'close_trade_profit')
        self.close_trade_profit = attributes[:'close_trade_profit']
      end

      if attributes.key?(:'asset_amount')
        self.asset_amount = attributes[:'asset_amount']
      end

      if attributes.key?(:'open_price')
        self.open_price = attributes[:'open_price']
      end

      if attributes.key?(:'jpy_conversion')
        self.jpy_conversion = attributes[:'jpy_conversion']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'position_id')
        self.position_id = attributes[:'position_id']
      end

      if attributes.key?(:'business_date')
        self.business_date = attributes[:'business_date']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          symbol_id == o.symbol_id &&
          order_behavior == o.order_behavior &&
          trade_behavior == o.trade_behavior &&
          order_side == o.order_side &&
          order_pattern == o.order_pattern &&
          order_type == o.order_type &&
          trade_action == o.trade_action &&
          price == o.price &&
          amount == o.amount &&
          profit == o.profit &&
          fee == o.fee &&
          position_fee == o.position_fee &&
          close_trade_profit == o.close_trade_profit &&
          asset_amount == o.asset_amount &&
          open_price == o.open_price &&
          jpy_conversion == o.jpy_conversion &&
          order_id == o.order_id &&
          position_id == o.position_id &&
          business_date == o.business_date &&
          created_at == o.created_at &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, symbol_id, order_behavior, trade_behavior, order_side, order_pattern, order_type, trade_action, price, amount, profit, fee, position_fee, close_trade_profit, asset_amount, open_price, jpy_conversion, order_id, position_id, business_date, created_at, updated_at].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        RakutenTrading.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
