// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DistributorOrderStruct extends BaseStruct {
  DistributorOrderStruct({
    int? orderId,
    String? orderFormid,
    int? distributorId,
    String? distributorName,
    String? distributorPhone,
    String? price,
    String? commission,
    int? state,
    String? transactionTime,
    int? type,
  })  : _orderId = orderId,
        _orderFormid = orderFormid,
        _distributorId = distributorId,
        _distributorName = distributorName,
        _distributorPhone = distributorPhone,
        _price = price,
        _commission = commission,
        _state = state,
        _transactionTime = transactionTime,
        _type = type;

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

  // "distributor_id" field.
  int? _distributorId;
  int get distributorId => _distributorId ?? 0;
  set distributorId(int? val) => _distributorId = val;

  void incrementDistributorId(int amount) =>
      distributorId = distributorId + amount;

  bool hasDistributorId() => _distributorId != null;

  // "distributor_name" field.
  String? _distributorName;
  String get distributorName => _distributorName ?? '';
  set distributorName(String? val) => _distributorName = val;

  bool hasDistributorName() => _distributorName != null;

  // "distributor_phone" field.
  String? _distributorPhone;
  String get distributorPhone => _distributorPhone ?? '';
  set distributorPhone(String? val) => _distributorPhone = val;

  bool hasDistributorPhone() => _distributorPhone != null;

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

  static DistributorOrderStruct fromMap(Map<String, dynamic> data) =>
      DistributorOrderStruct(
        orderId: castToType<int>(data['order_id']),
        orderFormid: data['order_formid'] as String?,
        distributorId: castToType<int>(data['distributor_id']),
        distributorName: data['distributor_name'] as String?,
        distributorPhone: data['distributor_phone'] as String?,
        price: data['price'] as String?,
        commission: data['commission'] as String?,
        state: castToType<int>(data['state']),
        transactionTime: data['transaction_time'] as String?,
        type: castToType<int>(data['type']),
      );

  static DistributorOrderStruct? maybeFromMap(dynamic data) => data is Map
      ? DistributorOrderStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'order_id': _orderId,
        'order_formid': _orderFormid,
        'distributor_id': _distributorId,
        'distributor_name': _distributorName,
        'distributor_phone': _distributorPhone,
        'price': _price,
        'commission': _commission,
        'state': _state,
        'transaction_time': _transactionTime,
        'type': _type,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'order_id': serializeParam(
          _orderId,
          ParamType.int,
        ),
        'order_formid': serializeParam(
          _orderFormid,
          ParamType.String,
        ),
        'distributor_id': serializeParam(
          _distributorId,
          ParamType.int,
        ),
        'distributor_name': serializeParam(
          _distributorName,
          ParamType.String,
        ),
        'distributor_phone': serializeParam(
          _distributorPhone,
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

  static DistributorOrderStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DistributorOrderStruct(
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
        distributorId: deserializeParam(
          data['distributor_id'],
          ParamType.int,
          false,
        ),
        distributorName: deserializeParam(
          data['distributor_name'],
          ParamType.String,
          false,
        ),
        distributorPhone: deserializeParam(
          data['distributor_phone'],
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
  String toString() => 'DistributorOrderStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DistributorOrderStruct &&
        orderId == other.orderId &&
        orderFormid == other.orderFormid &&
        distributorId == other.distributorId &&
        distributorName == other.distributorName &&
        distributorPhone == other.distributorPhone &&
        price == other.price &&
        commission == other.commission &&
        state == other.state &&
        transactionTime == other.transactionTime &&
        type == other.type;
  }

  @override
  int get hashCode => const ListEquality().hash([
        orderId,
        orderFormid,
        distributorId,
        distributorName,
        distributorPhone,
        price,
        commission,
        state,
        transactionTime,
        type
      ]);
}

DistributorOrderStruct createDistributorOrderStruct({
  int? orderId,
  String? orderFormid,
  int? distributorId,
  String? distributorName,
  String? distributorPhone,
  String? price,
  String? commission,
  int? state,
  String? transactionTime,
  int? type,
}) =>
    DistributorOrderStruct(
      orderId: orderId,
      orderFormid: orderFormid,
      distributorId: distributorId,
      distributorName: distributorName,
      distributorPhone: distributorPhone,
      price: price,
      commission: commission,
      state: state,
      transactionTime: transactionTime,
      type: type,
    );
