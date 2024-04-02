# RakutenTrading::PublicApi

All URIs are relative to *https://exchange.rakuten-wallet.co.jp/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_candlestick**](PublicApi.md#get_candlestick) | **GET** /candlestick | ローソク取得
[**get_orderbook**](PublicApi.md#get_orderbook) | **GET** /orderbook | 板取得
[**get_symbol**](PublicApi.md#get_symbol) | **GET** /cfd/symbol | 銘柄一覧取得
[**get_ticker**](PublicApi.md#get_ticker) | **GET** /ticker | ティッカー取得
[**get_trades**](PublicApi.md#get_trades) | **GET** /trades | 歩み値取得

# **get_candlestick**
> InlineResponse2001 get_candlestick(symbol_id, candlestick_type, opts)

ローソク取得

指定された銘柄のローソク足データを取得します。データは指定された範囲で検索され、最新のデータから最大500件まで取得することが可能です。 

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

api_instance = RakutenTrading::PublicApi.new
symbol_id = 789 # Integer | シンボルID
candlestick_type = 'candlestick_type_example' # String | ローソク足の種類。ISO8601フォーマットに準拠。
opts = { 
  date_from: 789, # Integer | 取得開始日時。UNIXタイムスタンプ（ミリ秒）で指定。
  date_to: 789 # Integer | 取得終了日時。UNIXタイムスタンプ（ミリ秒）で指定。
}

begin
  #ローソク取得
  result = api_instance.get_candlestick(symbol_id, candlestick_type, opts)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PublicApi->get_candlestick: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID | 
 **candlestick_type** | **String**| ローソク足の種類。ISO8601フォーマットに準拠。 | 
 **date_from** | **Integer**| 取得開始日時。UNIXタイムスタンプ（ミリ秒）で指定。 | [optional] 
 **date_to** | **Integer**| 取得終了日時。UNIXタイムスタンプ（ミリ秒）で指定。 | [optional] 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_orderbook**
> InlineResponse2002 get_orderbook(symbol_id)

板取得

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

api_instance = RakutenTrading::PublicApi.new
symbol_id = 789 # Integer | シンボルID


begin
  #板取得
  result = api_instance.get_orderbook(symbol_id)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PublicApi->get_orderbook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID | 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_symbol**
> Array&lt;InlineResponse200&gt; get_symbol(opts)

銘柄一覧取得

利用可能な全銘柄の一覧を取得します。 

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

api_instance = RakutenTrading::PublicApi.new
opts = { 
  authority: 'authority_example' # String | PERSONAL, CORPORATE。
}

begin
  #銘柄一覧取得
  result = api_instance.get_symbol(opts)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PublicApi->get_symbol: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authority** | **String**| PERSONAL, CORPORATE。 | [optional] 

### Return type

[**Array&lt;InlineResponse200&gt;**](InlineResponse200.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_ticker**
> InlineResponse2003 get_ticker(symbol_id)

ティッカー取得

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

api_instance = RakutenTrading::PublicApi.new
symbol_id = 789 # Integer | シンボルID


begin
  #ティッカー取得
  result = api_instance.get_ticker(symbol_id)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PublicApi->get_ticker: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID | 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_trades**
> InlineResponse2004 get_trades(symbol_id)

歩み値取得

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

api_instance = RakutenTrading::PublicApi.new
symbol_id = 789 # Integer | シンボルID


begin
  #歩み値取得
  result = api_instance.get_trades(symbol_id)
  p result
rescue RakutenTrading::ApiError => e
  puts "Exception when calling PublicApi->get_trades: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **symbol_id** | **Integer**| シンボルID | 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth), [SignatureAuth](../README.md#SignatureAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



