# RakutenTrading::PrivateApi

All URIs are relative to *https://exchange.rakuten-wallet.co.jp/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_asset**](PrivateApi.md#get_asset) | **GET** /asset | 残高一覧取得
[**get_cfd_trades**](PrivateApi.md#get_cfd_trades) | **GET** /cfd/trade | 約定履歴取得
[**get_equitydata**](PrivateApi.md#get_equitydata) | **GET** /cfd/equitydata | 証拠金関連項目取得
[**get_order**](PrivateApi.md#get_order) | **GET** /cfd/order | 注文一覧取得
[**get_position**](PrivateApi.md#get_position) | **GET** /cfd/position | 建玉一覧取得
[**order**](PrivateApi.md#order) | **POST** /cfd/order | 注文
[**order_amend**](PrivateApi.md#order_amend) | **PUT** /cfd/order | 注文訂正
[**order_cancel**](PrivateApi.md#order_cancel) | **DELETE** /cfd/order | 注文取消

# **get_asset**
> Array&lt;InlineResponse2005&gt; get_asset

残高一覧取得

アカウントの資産情報（各通貨の保有量）を取得します。 

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new

begin
  #残高一覧取得
  result = api_instance.get_asset
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->get_asset: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Array&lt;InlineResponse2005&gt;**](InlineResponse2005.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_cfd_trades**
> Array&lt;CfdTrade&gt; get_cfd_trades(symbol_id, opts)

約定履歴取得

指定された条件に基づくCFD取引の約定履歴（トレード）を取得します。これにより、ユーザーは過去の取引データを分析することができます。 

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new
symbol_id = 789 # Integer | シンボルID
opts = { 
  id: [56], # Array<Integer> | 約定IDの配列
  date_from: 789, # Integer | 取得開始日時（作成日時）。UNIXタイムスタンプ（ミリ秒）で指定。直近48時間。
  date_to: 789, # Integer | 取得終了日時（作成日時）。UNIXタイムスタンプ（ミリ秒）で指定。直近48時間。
  order_behavior: 'order_behavior_example', # String | 注文の挙動（OPEN, CLOSE）
  trade_behavior: 'trade_behavior_example', # String | トレードの挙動（OPEN, CLOSE）
  order_side: 'order_side_example', # String | 売買方向（SELL, BUY）
  order_pattern: ['order_pattern_example'], # Array<String> | 注文パターン（NORMAL, OCO, IFD, IFD_OCO, LOSS_CUT, CLOSE_ALL）
  order_type: ['order_type_example'], # Array<String> | 執行条件（MARKET, LIMIT, STOP）
  trade_action: 'trade_action_example', # String | 約定アクション（MAKER, TAKER）
  order_id: [56], # Array<Integer> | 注文IDの配列
  position_id: [56], # Array<Integer> | 建玉IDの配列
  size: 30 # Integer | 取得件数。デフォルトは30、最大は500。
}

begin
  #約定履歴取得
  result = api_instance.get_cfd_trades(symbol_id, opts)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->get_cfd_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID | 
 **id** | [**Array&lt;Integer&gt;**](Integer.md)| 約定IDの配列 | [optional] 
 **date_from** | **Integer**| 取得開始日時（作成日時）。UNIXタイムスタンプ（ミリ秒）で指定。直近48時間。 | [optional] 
 **date_to** | **Integer**| 取得終了日時（作成日時）。UNIXタイムスタンプ（ミリ秒）で指定。直近48時間。 | [optional] 
 **order_behavior** | **String**| 注文の挙動（OPEN, CLOSE） | [optional] 
 **trade_behavior** | **String**| トレードの挙動（OPEN, CLOSE） | [optional] 
 **order_side** | **String**| 売買方向（SELL, BUY） | [optional] 
 **order_pattern** | [**Array&lt;String&gt;**](String.md)| 注文パターン（NORMAL, OCO, IFD, IFD_OCO, LOSS_CUT, CLOSE_ALL） | [optional] 
 **order_type** | [**Array&lt;String&gt;**](String.md)| 執行条件（MARKET, LIMIT, STOP） | [optional] 
 **trade_action** | **String**| 約定アクション（MAKER, TAKER） | [optional] 
 **order_id** | [**Array&lt;Integer&gt;**](Integer.md)| 注文IDの配列 | [optional] 
 **position_id** | [**Array&lt;Integer&gt;**](Integer.md)| 建玉IDの配列 | [optional] 
 **size** | **Integer**| 取得件数。デフォルトは30、最大は500。 | [optional] [default to 30]

### Return type

[**Array&lt;CfdTrade&gt;**](CfdTrade.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_equitydata**
> InlineResponse2006 get_equitydata

証拠金関連項目取得

口座の証拠金関連情報を取得します。これには建玉評価損益、必要証拠金、証拠金維持率などが含まれます。 

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new

begin
  #証拠金関連項目取得
  result = api_instance.get_equitydata
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->get_equitydata: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_order**
> Array&lt;OrderDetail&gt; get_order(symbol_id, opts)

注文一覧取得

指定された条件にマッチする注文一覧を取得します。このエンドポイントを通じて、特定のシンボル、注文タイプ、または期間に関する注文の詳細情報を照会することができます。 

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new
symbol_id = 789 # Integer | シンボルID
opts = { 
  id: [56], # Array<Integer> | 注文IDの配列
  date_from: 789, # Integer | 取得開始日時（注文成立日時）。UNIXタイムスタンプ（ミリ秒）で指定。
  date_to: 789, # Integer | 取得終了日時（注文成立日時）。UNIXタイムスタンプ（ミリ秒）で指定。
  order_behavior: 'order_behavior_example', # String | 注文の挙動（OPEN, CLOSE）
  order_side: 'order_side_example', # String | 売買方向（SELL, BUY）
  order_pattern: ['order_pattern_example'], # Array<String> | 注文パターン（NORMAL, OCO, IFD, IFD_OCO）
  order_type: ['order_type_example'], # Array<String> | 執行条件（MARKET, LIMIT, STOP）
  close_behavior: ['close_behavior_example'], # Array<String> | 決済挙動（CROSS, FIFO）
  order_status: ['order_status_example'], # Array<String> | 注文ステータス（WORKING_ORDER, PARTIAL_FILL）
  post_only: true, # BOOLEAN | メイカー注文のみ許可
  size: 30 # Integer | 取得件数。デフォルトは30、最大は500。
}

begin
  #注文一覧取得
  result = api_instance.get_order(symbol_id, opts)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->get_order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID | 
 **id** | [**Array&lt;Integer&gt;**](Integer.md)| 注文IDの配列 | [optional] 
 **date_from** | **Integer**| 取得開始日時（注文成立日時）。UNIXタイムスタンプ（ミリ秒）で指定。 | [optional] 
 **date_to** | **Integer**| 取得終了日時（注文成立日時）。UNIXタイムスタンプ（ミリ秒）で指定。 | [optional] 
 **order_behavior** | **String**| 注文の挙動（OPEN, CLOSE） | [optional] 
 **order_side** | **String**| 売買方向（SELL, BUY） | [optional] 
 **order_pattern** | [**Array&lt;String&gt;**](String.md)| 注文パターン（NORMAL, OCO, IFD, IFD_OCO） | [optional] 
 **order_type** | [**Array&lt;String&gt;**](String.md)| 執行条件（MARKET, LIMIT, STOP） | [optional] 
 **close_behavior** | [**Array&lt;String&gt;**](String.md)| 決済挙動（CROSS, FIFO） | [optional] 
 **order_status** | [**Array&lt;String&gt;**](String.md)| 注文ステータス（WORKING_ORDER, PARTIAL_FILL） | [optional] 
 **post_only** | **BOOLEAN**| メイカー注文のみ許可 | [optional] 
 **size** | **Integer**| 取得件数。デフォルトは30、最大は500。 | [optional] [default to 30]

### Return type

[**Array&lt;OrderDetail&gt;**](OrderDetail.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_position**
> Array&lt;InlineResponse2007&gt; get_position(opts)

建玉一覧取得

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new
opts = { 
  symbol_id: 789, # Integer | シンボルID。特定の銘柄に対する建玉のみを取得したい場合に指定します。
  id: [56], # Array<Integer> | 建玉ID。特定の建玉情報のみを取得したい場合に指定します。
  date_from: 789, # Integer | 取得開始日時。指定日時以上の建玉を検索します。
  date_to: 789 # Integer | 取得終了日時。指定日時未満の建玉を検索します。
}

begin
  #建玉一覧取得
  result = api_instance.get_position(opts)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->get_position: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID。特定の銘柄に対する建玉のみを取得したい場合に指定します。 | [optional] 
 **id** | [**Array&lt;Integer&gt;**](Integer.md)| 建玉ID。特定の建玉情報のみを取得したい場合に指定します。 | [optional] 
 **date_from** | **Integer**| 取得開始日時。指定日時以上の建玉を検索します。 | [optional] 
 **date_to** | **Integer**| 取得終了日時。指定日時未満の建玉を検索します。 | [optional] 

### Return type

[**Array&lt;InlineResponse2007&gt;**](InlineResponse2007.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **order**
> Array&lt;OrderResponse&gt; order(body)

注文

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new
body = RakutenTrading::CfdOrderBody1.new # CfdOrderBody1 | 


begin
  #注文
  result = api_instance.order(body)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->order: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CfdOrderBody1**](CfdOrderBody1.md)|  | 

### Return type

[**Array&lt;OrderResponse&gt;**](OrderResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_amend**
> Array&lt;OrderResponse&gt; order_amend(body)

注文訂正

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new
body = RakutenTrading::CfdOrderBody.new # CfdOrderBody | 


begin
  #注文訂正
  result = api_instance.order_amend(body)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->order_amend: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CfdOrderBody**](CfdOrderBody.md)|  | 

### Return type

[**Array&lt;OrderResponse&gt;**](OrderResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **order_cancel**
> Array&lt;OrderResponse&gt; order_cancel(symbol_id, id)

注文取消

### Example
```ruby
# load the gem
require 'rakuten_trading'
# setup authorization
RakutenTrading.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['API-KEY'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['API-KEY'] = 'Bearer'

  # Configure API key authorization: SignatureAuth
  config.api_key['SIGNATURE'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['SIGNATURE'] = 'Bearer'
end

api_instance = RakutenTrading::PrivateApi.new
symbol_id = 789 # Integer | シンボルID
id = 789 # Integer | 注文ID


begin
  #注文取消
  result = api_instance.order_cancel(symbol_id, id)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PrivateApi->order_cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID | 
 **id** | **Integer**| 注文ID | 

### Return type

[**Array&lt;OrderResponse&gt;**](OrderResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



