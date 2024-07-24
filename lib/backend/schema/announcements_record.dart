import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnnouncementsRecord extends FirestoreRecord {
  AnnouncementsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "imageURL" field.
  String? _imageURL;
  String get imageURL => _imageURL ?? '';
  bool hasImageURL() => _imageURL != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _uid = snapshotData['uid'] as String?;
    _imageURL = snapshotData['imageURL'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Announcements');

  static Stream<AnnouncementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnnouncementsRecord.fromSnapshot(s));

  static Future<AnnouncementsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnnouncementsRecord.fromSnapshot(s));

  static AnnouncementsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnnouncementsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnnouncementsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnnouncementsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnnouncementsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnnouncementsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnnouncementsRecordData({
  String? title,
  String? description,
  DateTime? timestamp,
  String? photoUrl,
  DateTime? createdTime,
  String? displayName,
  String? email,
  String? phoneNumber,
  String? uid,
  String? imageURL,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'timestamp': timestamp,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'display_name': displayName,
      'email': email,
      'phone_number': phoneNumber,
      'uid': uid,
      'imageURL': imageURL,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnnouncementsRecordDocumentEquality
    implements Equality<AnnouncementsRecord> {
  const AnnouncementsRecordDocumentEquality();

  @override
  bool equals(AnnouncementsRecord? e1, AnnouncementsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.timestamp == e2?.timestamp &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.uid == e2?.uid &&
        e1?.imageURL == e2?.imageURL;
  }

  @override
  int hash(AnnouncementsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.timestamp,
        e?.photoUrl,
        e?.createdTime,
        e?.displayName,
        e?.email,
        e?.phoneNumber,
        e?.uid,
        e?.imageURL
      ]);

  @override
  bool isValidKey(Object? o) => o is AnnouncementsRecord;
}
