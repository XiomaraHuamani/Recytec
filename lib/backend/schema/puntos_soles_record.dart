import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PuntosSolesRecord extends FirestoreRecord {
  PuntosSolesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "creador" field.
  DocumentReference? _creador;
  DocumentReference? get creador => _creador;
  bool hasCreador() => _creador != null;

  // "fechacreacion" field.
  DateTime? _fechacreacion;
  DateTime? get fechacreacion => _fechacreacion;
  bool hasFechacreacion() => _fechacreacion != null;

  // "puntos" field.
  DocumentReference? _puntos;
  DocumentReference? get puntos => _puntos;
  bool hasPuntos() => _puntos != null;

  // "conPuntos" field.
  bool? _conPuntos;
  bool get conPuntos => _conPuntos ?? false;
  bool hasConPuntos() => _conPuntos != null;

  // "sinPuntos" field.
  bool? _sinPuntos;
  bool get sinPuntos => _sinPuntos ?? false;
  bool hasSinPuntos() => _sinPuntos != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "producto" field.
  int? _producto;
  int get producto => _producto ?? 0;
  bool hasProducto() => _producto != null;

  void _initializeFields() {
    _creador = snapshotData['creador'] as DocumentReference?;
    _fechacreacion = snapshotData['fechacreacion'] as DateTime?;
    _puntos = snapshotData['puntos'] as DocumentReference?;
    _conPuntos = snapshotData['conPuntos'] as bool?;
    _sinPuntos = snapshotData['sinPuntos'] as bool?;
    _valor = castToType<double>(snapshotData['valor']);
    _producto = castToType<int>(snapshotData['producto']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('puntosSoles');

  static Stream<PuntosSolesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PuntosSolesRecord.fromSnapshot(s));

  static Future<PuntosSolesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PuntosSolesRecord.fromSnapshot(s));

  static PuntosSolesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PuntosSolesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PuntosSolesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PuntosSolesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PuntosSolesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PuntosSolesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPuntosSolesRecordData({
  DocumentReference? creador,
  DateTime? fechacreacion,
  DocumentReference? puntos,
  bool? conPuntos,
  bool? sinPuntos,
  double? valor,
  int? producto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'creador': creador,
      'fechacreacion': fechacreacion,
      'puntos': puntos,
      'conPuntos': conPuntos,
      'sinPuntos': sinPuntos,
      'valor': valor,
      'producto': producto,
    }.withoutNulls,
  );

  return firestoreData;
}
