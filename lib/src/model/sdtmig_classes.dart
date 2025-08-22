//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sdtmig_classes_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtmig_classes.g.dart';

/// SdtmigClasses
///
/// Properties:
/// * [name] 
/// * [label] 
/// * [description] 
/// * [source_] 
/// * [effectiveDate] 
/// * [registrationStatus] 
/// * [version] 
/// * [links] 
@BuiltValue()
abstract class SdtmigClasses implements Built<SdtmigClasses, SdtmigClassesBuilder> {
  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'effectiveDate')
  String? get effectiveDate;

  @BuiltValueField(wireName: r'registrationStatus')
  String? get registrationStatus;

  @BuiltValueField(wireName: r'version')
  String? get version;

  @BuiltValueField(wireName: r'_links')
  SdtmigClassesLinks? get links;

  SdtmigClasses._();

  factory SdtmigClasses([void updates(SdtmigClassesBuilder b)]) = _$SdtmigClasses;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmigClassesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmigClasses> get serializer => _$SdtmigClassesSerializer();
}

class _$SdtmigClassesSerializer implements PrimitiveSerializer<SdtmigClasses> {
  @override
  final Iterable<Type> types = const [SdtmigClasses, _$SdtmigClasses];

  @override
  final String wireName = r'SdtmigClasses';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmigClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.label != null) {
      yield r'label';
      yield serializers.serialize(
        object.label,
        specifiedType: const FullType(String),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.effectiveDate != null) {
      yield r'effectiveDate';
      yield serializers.serialize(
        object.effectiveDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.registrationStatus != null) {
      yield r'registrationStatus';
      yield serializers.serialize(
        object.registrationStatus,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(SdtmigClassesLinks),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmigClasses object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmigClassesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'label':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.label = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'effectiveDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.effectiveDate = valueDes;
          break;
        case r'registrationStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.registrationStatus = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmigClassesLinks),
          ) as SdtmigClassesLinks;
          result.links.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SdtmigClasses deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmigClassesBuilder();
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

