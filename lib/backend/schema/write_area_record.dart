import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class WriteAreaRecord extends FirestoreRecord {
  WriteAreaRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "local" field.
  String? _local;
  String get local => _local ?? '';
  bool hasLocal() => _local != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _local = snapshotData['local'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('writeArea')
          : FirebaseFirestore.instance.collectionGroup('writeArea');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('writeArea').doc(id);

  static Stream<WriteAreaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => WriteAreaRecord.fromSnapshot(s));

  static Future<WriteAreaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => WriteAreaRecord.fromSnapshot(s));

  static WriteAreaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      WriteAreaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static WriteAreaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      WriteAreaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'WriteAreaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is WriteAreaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createWriteAreaRecordData({
  String? local,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'local': local,
    }.withoutNulls,
  );

  return firestoreData;
}

class WriteAreaRecordDocumentEquality implements Equality<WriteAreaRecord> {
  const WriteAreaRecordDocumentEquality();

  @override
  bool equals(WriteAreaRecord? e1, WriteAreaRecord? e2) {
    return e1?.local == e2?.local;
  }

  @override
  int hash(WriteAreaRecord? e) => const ListEquality().hash([e?.local]);

  @override
  bool isValidKey(Object? o) => o is WriteAreaRecord;
}
