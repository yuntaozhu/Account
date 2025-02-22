// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BuyerUserReleaseStruct extends BaseStruct {
  BuyerUserReleaseStruct({
    int? id,
    int? orderId,
    String? orderFormid,
    String? balance,
    String? totalIncome,
    String? totalExpenses,
    int? buyerUserId,
    String? releaseAmount,
    String? createTime,
    String? updateTime,
  })  : _id = id,
        _orderId = orderId,
        _orderFormid = orderFormid,
        _balance = balance,
        _totalIncome = totalIncome,
        _totalExpenses = totalExpenses,
        _buyerUserId = buyerUserId,
        _releaseAmount = releaseAmount,
        _createTime = createTime,
        _updateTime = updateTime;

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

  // "buyer_user_id" field.
  int? _buyerUserId;
  int get buyerUserId => _buyerUserId ?? 0;
  set buyerUserId(int? val) => _buyerUserId = val;

  void incrementBuyerUserId(int amount) => buyerUserId = buyerUserId + amount;

  bool hasBuyerUserId() => _buyerUserId != null;

  // "release_amount" field.
  String? _releaseAmount;
  String get releaseAmount => _releaseAmount ?? '';
  set releaseAmount(String? val) => _releaseAmount = val;

  bool hasReleaseAmount() => _releaseAmount != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "update_time" field.
  String? _updateTime;
  String get updateTime => _updateTime ?? '';
  set updateTime(String? val) => _updateTime = val;

  bool hasUpdateTime() => _updateTime != null;

  static BuyerUserReleaseStruct fromMap(Map<String, dynamic> data) =>
      BuyerUserReleaseStruct(
        id: castToType<int>(data['id']),
        orderId: castToType<int>(data['order_id']),
        orderFormid: data['order_formid'] as String?,
        balance: data['balance'] as String?,
        totalIncome: data['total_income'] as String?,
        totalExpenses: data['total_expenses'] as String?,
        buyerUserId: castToType<int>(data['buyer_user_id']),
        releaseAmount: data['release_amount'] as String?,
        createTime: data['create_time'] as String?,
        updateTime: data['update_time'] as String?,
      );

  static BuyerUserReleaseStruct? maybeFromMap(dynamic data) => data is Map
      ? BuyerUserReleaseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'order_id': _orderId,
        'order_formid': _orderFormid,
        'balance': _balance,
        'total_income': _totalIncome,
        'total_expenses': _totalExpenses,
        'buyer_user_id': _buyerUserId,
        'release_amount': _releaseAmount,
        'create_time': _createTime,
        'update_time': _updateTime,
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
        'buyer_user_id': serializeParam(
          _buyerUserId,
          ParamType.int,
        ),
        'release_amount': serializeParam(
          _releaseAmount,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'update_time': serializeParam(
          _updateTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static BuyerUserReleaseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BuyerUserReleaseStruct(
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
        buyerUserId: deserializeParam(
          data['buyer_user_id'],
          ParamType.int,
          false,
        ),
        releaseAmount: deserializeParam(
          data['release_amount'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        updateTime: deserializeParam(
          data['update_time'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BuyerUserReleaseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BuyerUserReleaseStruct &&
        id == other.id &&
        orderId == other.orderId &&
        orderFormid == other.orderFormid &&
        balance == other.balance &&
        totalIncome == other.totalIncome &&
        totalExpenses == other.totalExpenses &&
        buyerUserId == other.buyerUserId &&
        releaseAmount == other.releaseAmount &&
        createTime == other.createTime &&
        updateTime == other.updateTime;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        orderId,
        orderFormid,
        balance,
        totalIncome,
        totalExpenses,
        buyerUserId,
        releaseAmount,
        createTime,
        updateTime
      ]);
}

BuyerUserReleaseStruct createBuyerUserReleaseStruct({
  int? id,
  int? orderId,
  String? orderFormid,
  String? balance,
  String? totalIncome,
  String? totalExpenses,
  int? buyerUserId,
  String? releaseAmount,
  String? createTime,
  String? updateTime,
}) =>
    BuyerUserReleaseStruct(
      id: id,
      orderId: orderId,
      orderFormid: orderFormid,
      balance: balance,
      totalIncome: totalIncome,
      totalExpenses: totalExpenses,
      buyerUserId: buyerUserId,
      releaseAmount: releaseAmount,
      createTime: createTime,
      updateTime: updateTime,
    );
