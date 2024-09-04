// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuyerUserOrdersStruct extends BaseStruct {
  BuyerUserOrdersStruct({
    int? id,
    int? orderId,
    String? orderFormid,
    int? buyerUserId,
    String? buyerUserName,
    String? balance,
    String? totalIncome,
    String? totalExpenses,
    String? price,
    String? commission,
    String? message,
    int? state,
    String? transactionTime,
    int? type,
  })  : _id = id,
        _orderId = orderId,
        _orderFormid = orderFormid,
        _buyerUserId = buyerUserId,
        _buyerUserName = buyerUserName,
        _balance = balance,
        _totalIncome = totalIncome,
        _totalExpenses = totalExpenses,
        _price = price,
        _commission = commission,
        _message = message,
        _state = state,
        _transactionTime = transactionTime,
        _type = type;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "order_id" field.
  int? _orderId;
  int get orderId => _orderId ?? 0;
  set orderId(int? val) => _orderId = val;

  void incrementOrderId(int amount) => orderId = orderId + amount;

  bool hasOrderId() => _orderId != null;

  // "order_formid" field.
  String? _orderFormid;
  String get orderFormid => _orderFormid ?? '';
  set orderFormid(String? val) => _orderFormid = val;

  bool hasOrderFormid() => _orderFormid != null;

  // "buyer_user_id" field.
  int? _buyerUserId;
  int get buyerUserId => _buyerUserId ?? 0;
  set buyerUserId(int? val) => _buyerUserId = val;

  void incrementBuyerUserId(int amount) => buyerUserId = buyerUserId + amount;

  bool hasBuyerUserId() => _buyerUserId != null;

  // "buyer_user_name" field.
  String? _buyerUserName;
  String get buyerUserName => _buyerUserName ?? '';
  set buyerUserName(String? val) => _buyerUserName = val;

  bool hasBuyerUserName() => _buyerUserName != null;

  // "balance" field.
  String? _balance;
  String get balance => _balance ?? '';
  set balance(String? val) => _balance = val;

  bool hasBalance() => _balance != null;

  // "total_income" field.
  String? _totalIncome;
  String get totalIncome => _totalIncome ?? '';
  set totalIncome(String? val) => _totalIncome = val;

  bool hasTotalIncome() => _totalIncome != null;

  // "total_expenses" field.
  String? _totalExpenses;
  String get totalExpenses => _totalExpenses ?? '';
  set totalExpenses(String? val) => _totalExpenses = val;

  bool hasTotalExpenses() => _totalExpenses != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "commission" field.
  String? _commission;
  String get commission => _commission ?? '';
  set commission(String? val) => _commission = val;

  bool hasCommission() => _commission != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "state" field.
  int? _state;
  int get state => _state ?? 0;
  set state(int? val) => _state = val;

  void incrementState(int amount) => state = state + amount;

  bool hasState() => _state != null;

  // "transaction_time" field.
  String? _transactionTime;
  String get transactionTime => _transactionTime ?? '';
  set transactionTime(String? val) => _transactionTime = val;

  bool hasTransactionTime() => _transactionTime != null;

  // "type" field.
  int? _type;
  int get type => _type ?? 0;
  set type(int? val) => _type = val;

  void incrementType(int amount) => type = type + amount;

  bool hasType() => _type != null;

  static BuyerUserOrdersStruct fromMap(Map<String, dynamic> data) =>
      BuyerUserOrdersStruct(
        id: castToType<int>(data['id']),
        orderId: castToType<int>(data['order_id']),
        orderFormid: data['order_formid'] as String?,
        buyerUserId: castToType<int>(data['buyer_user_id']),
        buyerUserName: data['buyer_user_name'] as String?,
        balance: data['balance'] as String?,
        totalIncome: data['total_income'] as String?,
        totalExpenses: data['total_expenses'] as String?,
        price: data['price'] as String?,
        commission: data['commission'] as String?,
        message: data['message'] as String?,
        state: castToType<int>(data['state']),
        transactionTime: data['transaction_time'] as String?,
        type: castToType<int>(data['type']),
      );

  static BuyerUserOrdersStruct? maybeFromMap(dynamic data) => data is Map
      ? BuyerUserOrdersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'order_id': _orderId,
        'order_formid': _orderFormid,
        'buyer_user_id': _buyerUserId,
        'buyer_user_name': _buyerUserName,
        'balance': _balance,
        'total_income': _totalIncome,
        'total_expenses': _totalExpenses,
        'price': _price,
        'commission': _commission,
        'message': _message,
        'state': _state,
        'transaction_time': _transactionTime,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'order_id': serializeParam(
          _orderId,
          ParamType.int,
        ),
        'order_formid': serializeParam(
          _orderFormid,
          ParamType.String,
        ),
        'buyer_user_id': serializeParam(
          _buyerUserId,
          ParamType.int,
        ),
        'buyer_user_name': serializeParam(
          _buyerUserName,
          ParamType.String,
        ),
        'balance': serializeParam(
          _balance,
          ParamType.String,
        ),
        'total_income': serializeParam(
          _totalIncome,
          ParamType.String,
        ),
        'total_expenses': serializeParam(
          _totalExpenses,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'commission': serializeParam(
          _commission,
          ParamType.String,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'state': serializeParam(
          _state,
          ParamType.int,
        ),
        'transaction_time': serializeParam(
          _transactionTime,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.int,
        ),
      }.withoutNulls;

  static BuyerUserOrdersStruct fromSerializableMap(Map<String, dynamic> data) =>
      BuyerUserOrdersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        orderId: deserializeParam(
          data['order_id'],
          ParamType.int,
          false,
        ),
        orderFormid: deserializeParam(
          data['order_formid'],
          ParamType.String,
          false,
        ),
        buyerUserId: deserializeParam(
          data['buyer_user_id'],
          ParamType.int,
          false,
        ),
        buyerUserName: deserializeParam(
          data['buyer_user_name'],
          ParamType.String,
          false,
        ),
        balance: deserializeParam(
          data['balance'],
          ParamType.String,
          false,
        ),
        totalIncome: deserializeParam(
          data['total_income'],
          ParamType.String,
          false,
        ),
        totalExpenses: deserializeParam(
          data['total_expenses'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        commission: deserializeParam(
          data['commission'],
          ParamType.String,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        state: deserializeParam(
          data['state'],
          ParamType.int,
          false,
        ),
        transactionTime: deserializeParam(
          data['transaction_time'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'BuyerUserOrdersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BuyerUserOrdersStruct &&
        id == other.id &&
        orderId == other.orderId &&
        orderFormid == other.orderFormid &&
        buyerUserId == other.buyerUserId &&
        buyerUserName == other.buyerUserName &&
        balance == other.balance &&
        totalIncome == other.totalIncome &&
        totalExpenses == other.totalExpenses &&
        price == other.price &&
        commission == other.commission &&
        message == other.message &&
        state == other.state &&
        transactionTime == other.transactionTime &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderId,
        orderFormid,
        buyerUserId,
        buyerUserName,
        balance,
        totalIncome,
        totalExpenses,
        price,
        commission,
        message,
        state,
        transactionTime,
        type
      ]);
}

BuyerUserOrdersStruct createBuyerUserOrdersStruct({
  int? id,
  int? orderId,
  String? orderFormid,
  int? buyerUserId,
  String? buyerUserName,
  String? balance,
  String? totalIncome,
  String? totalExpenses,
  String? price,
  String? commission,
  String? message,
  int? state,
  String? transactionTime,
  int? type,
}) =>
    BuyerUserOrdersStruct(
      id: id,
      orderId: orderId,
      orderFormid: orderFormid,
      buyerUserId: buyerUserId,
      buyerUserName: buyerUserName,
      balance: balance,
      totalIncome: totalIncome,
      totalExpenses: totalExpenses,
      price: price,
      commission: commission,
      message: message,
      state: state,
      transactionTime: transactionTime,
      type: type,
    );
