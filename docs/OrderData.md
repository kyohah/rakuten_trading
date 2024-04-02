# RakutenTrading::OrderData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**order_behavior** | **String** | 注文の種類（新規または決済） | 
**position_id** | **Integer** | 決済対象の建玉ID。決済注文の場合必須。 | [optional] 
**order_side** | **String** | 売買方向（BUYまたはSELL） | 
**order_type** | **String** | 注文タイプ（LIMIT, MARKET, STOP） | 
**price** | **String** | 注文価格。指値注文や逆指値注文の場合必須。 | [optional] 
**amount** | **String** | 注文数量 | 
**order_expire** | **String** | 注文有効期限（GTC, DAY） | [optional] 
**leverage** | **Float** | レバレッジ倍率。新規注文の場合のみ。 | [optional] 
**close_behavior** | **String** | 建玉決済の挙動（CROSS, FIFO） | [optional] 
**post_only** | **BOOLEAN** | メイカー注文のみ許可するかどうか | [optional] 
**ifd_close_limit_price** | **String** | IFD決済指値注文価格 | [optional] 
**ifd_close_stop_price** | **String** | IFD決済逆指値注文価格 | [optional] 

