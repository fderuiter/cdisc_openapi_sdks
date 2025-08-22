//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_domain_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdash_domain_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_domain.g.dart';

/// CdashDomain
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [links] 
/// * [fields] 
@BuiltValue()
abstract class CdashDomain implements Built<CdashDomain, CdashDomainBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'_links')
  CdashDomainLinks? get links;

  @BuiltValueField(wireName: r'fields')
  BuiltList<CdashDomainField>? get fields;

  CdashDomain._();

  factory CdashDomain([void updates(CdashDomainBuilder b)]) = _$CdashDomain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashDomainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashDomain> get serializer => _$CdashDomainSerializer();
}

class _$CdashDomainSerializer implements PrimitiveSerializer<CdashDomain> {
  @override
  final Iterable<Type> types = const [CdashDomain, _$CdashDomain];

  @override
  final String wireName = r'CdashDomain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.ordinal != null) {
      yield r'ordinal';
      yield serializers.serialize(
        object.ordinal,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CdashDomainLinks),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(CdashDomainField)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashDomainBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ordinal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ordinal = valueDes;
          break;
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
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashDomainLinks),
          ) as CdashDomainLinks;
          result.links.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashDomainField)]),
          ) as BuiltList<CdashDomainField>;
          result.fields.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashDomain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashDomainBuilder();
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

