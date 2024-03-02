import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PuntosProductosRecord extends FirestoreRecord {
  PuntosProductosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "puntos" field.
  DocumentReference? _puntos;
  DocumentReference? get puntos => _puntos;
  bool hasPuntos() => _puntos != null;

  // "puntosSoles" field.
  DocumentReference? _puntosSoles;
  DocumentReference? get puntosSoles => _puntosSoles;
  bool hasPuntosSoles() => _puntosSoles != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "producto" field.
  String? _producto;
  String get producto => _producto ?? '';
  bool hasProducto() => _producto != null;

  // "puntos_producto" field.
  double? _puntosProducto;
  double get puntosProducto => _puntosProducto ?? 0.0;
  bool hasPuntosProducto() => _puntosProducto != null;

  void _initializeFields() {
    _puntos = snapshotData['puntos'] as DocumentReference?;
    _puntosSoles = snapshotData['puntosSoles'] as DocumentReference?;
    _imageUrl = snapshotData['image_url'] as String?;
    _producto = snapshotData['producto'] as String?;
    _puntosProducto = castToType<double>(snapshotData['puntos_producto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('puntosProductos');

  static Stream<PuntosProductosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuntosProductosRecord.fromSnapshot(s));

  static Future<PuntosProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PuntosProductosRecord.fromSnapshot(s));

  static PuntosProductosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PuntosProductosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuntosProductosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuntosProductosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuntosProductosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PuntosProductosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPuntosProductosRecordData({
  DocumentReference? puntos,
  DocumentReference? puntosSoles,
  String? imageUrl,
  String? producto,
  double? puntosProducto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'puntos': puntos,
      'puntosSoles': puntosSoles,
      'image_url': imageUrl,
      'producto': producto,
      'puntos_producto': puntosProducto,
    }.withoutNulls,
  );

  return firestoreData;
}
