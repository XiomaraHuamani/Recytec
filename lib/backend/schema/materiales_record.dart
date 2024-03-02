import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialesRecord extends FirestoreRecord {
  MaterialesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _descripcion = snapshotData['Descripcion'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Materiales');

  static Stream<MaterialesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialesRecord.fromSnapshot(s));

  static Future<MaterialesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialesRecord.fromSnapshot(s));

  static MaterialesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialesRecordData({
  String? name,
  double? precio,
  String? descripcion,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'precio': precio,
      'Descripcion': descripcion,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}
