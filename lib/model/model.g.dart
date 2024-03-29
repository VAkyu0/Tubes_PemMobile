// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: duplicate_ignore

part of 'model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class UserProfile extends _UserProfile
    with RealmEntity, RealmObjectBase, RealmObject {
  UserProfile(
    ObjectId id, {
    String? name,
    String? email,
    String? password,
    String? role,
    String? photo,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'password', password);
    RealmObjectBase.set(this, 'role', role);
    RealmObjectBase.set(this, 'photo', photo);
  }

  UserProfile._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String? get name => RealmObjectBase.get<String>(this, 'name') as String?;
  @override
  set name(String? value) => RealmObjectBase.set(this, 'name', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  String? get password =>
      RealmObjectBase.get<String>(this, 'password') as String?;
  @override
  set password(String? value) => RealmObjectBase.set(this, 'password', value);

  @override
  String? get role => RealmObjectBase.get<String>(this, 'role') as String?;
  @override
  set role(String? value) => RealmObjectBase.set(this, 'role', value);

  @override
  String? get photo => RealmObjectBase.get<String>(this, 'photo') as String?;
  @override
  set photo(String? value) => RealmObjectBase.set(this, 'photo', value);

  @override
  Stream<RealmObjectChanges<UserProfile>> get changes =>
      RealmObjectBase.getChanges<UserProfile>(this);

  @override
  UserProfile freeze() => RealmObjectBase.freezeObject<UserProfile>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(UserProfile._);
    return const SchemaObject(
        ObjectType.realmObject, UserProfile, 'UserProfile', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string, optional: true),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('password', RealmPropertyType.string, optional: true),
      SchemaProperty('role', RealmPropertyType.string, optional: true),
      SchemaProperty('photo', RealmPropertyType.string, optional: true),
    ]);
  }
}

// ignore_for_file: type=lint
class Task extends _Task with RealmEntity, RealmObjectBase, RealmObject {
  Task(
    ObjectId id, {
    UserProfile? createdBy,
    UserProfile? assignedTo,
    DateTime? createdAt,
    String? taskName,
    String? description,
    String? status,
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'created_by', createdBy);
    RealmObjectBase.set(this, 'assigned_to', assignedTo);
    RealmObjectBase.set(this, 'created_at', createdAt);
    RealmObjectBase.set(this, 'task_name', taskName);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'status', status);
  }

  Task._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  UserProfile? get createdBy =>
      RealmObjectBase.get<UserProfile>(this, 'created_by') as UserProfile?;
  @override
  set createdBy(covariant UserProfile? value) =>
      RealmObjectBase.set(this, 'created_by', value);

  @override
  UserProfile? get assignedTo =>
      RealmObjectBase.get<UserProfile>(this, 'assigned_to') as UserProfile?;
  @override
  set assignedTo(covariant UserProfile? value) =>
      RealmObjectBase.set(this, 'assigned_to', value);

  @override
  DateTime? get createdAt =>
      RealmObjectBase.get<DateTime>(this, 'created_at') as DateTime?;
  @override
  set createdAt(DateTime? value) =>
      RealmObjectBase.set(this, 'created_at', value);

  @override
  String? get taskName =>
      RealmObjectBase.get<String>(this, 'task_name') as String?;
  @override
  set taskName(String? value) => RealmObjectBase.set(this, 'task_name', value);

  @override
  String? get description =>
      RealmObjectBase.get<String>(this, 'description') as String?;
  @override
  set description(String? value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  String? get status => RealmObjectBase.get<String>(this, 'status') as String?;
  @override
  set status(String? value) => RealmObjectBase.set(this, 'status', value);

  @override
  Stream<RealmObjectChanges<Task>> get changes =>
      RealmObjectBase.getChanges<Task>(this);

  @override
  Task freeze() => RealmObjectBase.freezeObject<Task>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Task._);
    return const SchemaObject(ObjectType.realmObject, Task, 'Task', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('createdBy', RealmPropertyType.object,
          mapTo: 'created_by', optional: true, linkTarget: 'UserProfile'),
      SchemaProperty('assignedTo', RealmPropertyType.object,
          mapTo: 'assigned_to', optional: true, linkTarget: 'UserProfile'),
      SchemaProperty('createdAt', RealmPropertyType.timestamp,
          mapTo: 'created_at', optional: true),
      SchemaProperty('taskName', RealmPropertyType.string,
          mapTo: 'task_name', optional: true),
      SchemaProperty('description', RealmPropertyType.string, optional: true),
      SchemaProperty('status', RealmPropertyType.string, optional: true),
    ]);
  }
}
