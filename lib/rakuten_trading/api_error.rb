=begin
#API（証拠金取引所）

#本APIを利用することにより、取り扱っている銘柄一覧の取得、ローソク足データの取得、板の取得、歩値の取得、注文、残高照会といった操作を行う事ができます。 ## 留意事項 - APIキーはお客様のアカウント情報と紐付いております。もし第三者がお客様のAPIキーを知った場合、遠隔で売買注文の操作が可能となります。APIキーを第三者へ渡す事はセキュリティリスクを鑑みお控えください。 - 他社が提供するAPI機能を使用した自動売買取引ツールは、ご自身の判断と責任でご利用ください。 - リクエストパラメーターやレスポンスの日時についてはミリ秒のtimestamp(Unix Time)を用います。 - 日時の範囲検索は「以上・未満」で検索します。 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.54
=end

module RakutenTrading
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
      end
    end

    # Override to_s to display a friendly error message
    def to_s
      message
    end

    def message
      if @message.nil?
        msg = "Error message: the server returns an error"
      else
        msg = @message
      end

      msg += "\nHTTP status code: #{code}" if code
      msg += "\nResponse headers: #{response_headers}" if response_headers
      msg += "\nResponse body: #{response_body}" if response_body

      msg
    end

  end
end
