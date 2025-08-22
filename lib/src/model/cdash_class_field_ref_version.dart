//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_class_field_ref_version.g.dart';

/// CdashClassFieldRefVersion
///
/// Properties:
/// * [href] 
/// * [title] 
/// * [type] 
@BuiltValue()
abstract class CdashClassFieldRefVersion implements Built<CdashClassFieldRefVersion, CdashClassFieldRefVersionBuilder> {
  @BuiltValueField(wireName: r'href')
  String? get href;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'type')
  String? get type;

  CdashClassFieldRefVersion._();

  factory CdashClassFieldRefVersion([void updates(CdashClassFieldRefVersionBuilder b)]) = _$CdashClassFieldRefVersion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashClassFieldRefVersionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashClassFieldRefVersion> get serializer => _$CdashClassFieldRefVersionSerializer();
}

class _$CdashClassFieldRefVersionSerializer implements PrimitiveSerializer<CdashClassFieldRefVersion> {
  @override
  final Iterable<Type> types = const [CdashClassFieldRefVersion, _$CdashClassFieldRefVersion];

  @override
  final String wireName = r'CdashClassFieldRefVersion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashClassFieldRefVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.href != null) {
      yield r'href';
      yield serializers.serialize(
        object.href,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashClassFieldRefVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashClassFieldRefVersionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'href':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.href = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashClassFieldRefVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashClassFieldRefVersionBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

