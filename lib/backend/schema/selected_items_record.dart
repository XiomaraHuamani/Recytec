import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelectedItemsRecord extends FirestoreRecord {
  SelectedItemsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "item" field.
  DocumentReference? _item;
  DocumentReference? get item => _item;
  bool hasItem() => _item != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "subTotal" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "cart" field.
  DocumentReference? _cart;
  DocumentReference? get cart => _cart;
  bool hasCart() => _cart != null;

  // "creator" field.
  DocumentReference? _creator;
  DocumentReference? get creator => _creator;
  bool hasCreator() => _creator != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  void _initializeFields() {
    _item = snapshotData['item'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _subTotal = castToType<double>(snapshotData['subTotal']);
    _cart = snapshotData['cart'] as DocumentReference?;
    _creator = snapshotData['creator'] as DocumentReference?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('selectedItems');

  static Stream<SelectedItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SelectedItemsRecord.fromSnapshot(s));

  static Future<SelectedItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SelectedItemsRecord.fromSnapshot(s));

  static SelectedItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SelectedItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SelectedItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SelectedItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SelectedItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SelectedItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSelectedItemsRecordData({
  DocumentReference? item,
  String? name,
  String? description,
  String? image,
  double? price,
  double? subTotal,
  DocumentReference? cart,
  DocumentReference? creator,
  int? cantidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'item': item,
      'name': name,
      'description': description,
      'image': image,
      'price': price,
      'subTotal': subTotal,
      'cart': cart,
      'creator': creator,
      'cantidad': cantidad,
    }.withoutNulls,
  );

  return firestoreData;
}
