# RakutenTrading::InlineResponse200

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | シンボルID | [optional] 
**authority** | **String** | 口座種別 | [optional] 
**trade_type** | **String** | 取引タイプ | [optional] 
**currency_pair** | **String** | 通貨ペア | [optional] 
**base_currency** | **String** | ベース通貨 | [optional] 
**quote_currency** | **String** | クォート通貨 | [optional] 
**base_scale** | **Integer** | 数量の小数点以下桁数(ベース通貨桁数)。例) 1の場合0.1など | [optional] 
**quote_scale** | **Integer** | 価格の小数点以下桁数(クォート通貨桁数)。例) 0の場合、50000など | [optional] 
**base_step_amount** | **String** | 取扱単位(注文数量の最小単位) | [optional] 
**min_order_amount** | **String** | 1回の最小注文数量 | [optional] 
**max_order_amount** | **String** | 1回の最大注文数量 | [optional] 
**maker_trade_fee_percent** | **String** | メイカー約定手数料率% | [optional] 
**taker_trade_fee_percent** | **String** | テイカー約定手数料率% | [optional] 
**close_only** | **BOOLEAN** | 新規停止(決済・取消のみ可能) | [optional] 
**view_only** | **BOOLEAN** | レポート閲覧のみ可能 | [optional] 
**enabled** | **BOOLEAN** | 有効 | [optional] 

