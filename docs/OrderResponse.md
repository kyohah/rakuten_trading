# RakutenTrading::OrderResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | 注文ID | [optional] 
**symbol_id** | **Integer** | シンボルID | [optional] 
**order_behavior** | **String** | 注文の種類（新規または決済） | [optional] 
**order_side** | **String** | 売買方向（BUYまたはSELL） | [optional] 
**order_pattern** | **String** | 注文パターン（NORMAL, OCO, IFD, IFD_OCO） | [optional] 
**order_type** | **String** | 注文タイプ（LIMIT, MARKET, STOP） | [optional] 
**price** | **String** | 注文価格 | [optional] 
**average_price** | **String** | 平均約定価格 | [optional] 
**amount** | **String** | 注文数量 | [optional] 
**remaining_amount** | **String** | 未約定数量 | [optional] 
**order_status** | **String** | 注文ステータス（WORKING_ORDER, PARTIAL_FILL等） | [optional] 
**post_only** | **BOOLEAN** | メイカー注文のみ許可されたかどうか | [optional] 
**oco1_order_id** | **Integer** | OCO1注文ID | [optional] 
**oco2_order_id** | **Integer** | OCO2注文ID | [optional] 
**ifd_open_order_id** | **Integer** | IFD新規注文ID | [optional] 
**ifd_close_limit_price** | **String** | IFD決済指値注文価格 | [optional] 
**ifd_close_stop_price** | **String** | IFD決済逆指値注文価格 | [optional] 
**position_id** | **Integer** | 決済対象建玉ID | [optional] 
**order_expire** | **String** | 有効期限タイプ | [optional] 
**leverage** | **String** | レバレッジ倍率 | [optional] 
**necessary_margin** | **String** | 注文中証拠金 | [optional] 
**created_at** | **Integer** | 注文作成日時 | [optional] 
**updated_at** | **Integer** | 注文更新日時 | [optional] 

