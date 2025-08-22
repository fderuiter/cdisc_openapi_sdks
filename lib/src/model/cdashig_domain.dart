//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_domain_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_domain_field.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_domain.g.dart';

/// CdashigDomain
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [links] 
/// * [fields] 
@BuiltValue()
abstract class CdashigDomain implements Built<CdashigDomain, CdashigDomainBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'_links')
  CdashigDomainLinks? get links;

  @BuiltValueField(wireName: r'fields')
  BuiltList<CdashigDomainField>? get fields;

  CdashigDomain._();

  factory CdashigDomain([void updates(CdashigDomainBuilder b)]) = _$CdashigDomain;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigDomainBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigDomain> get serializer => _$CdashigDomainSerializer();
}

class _$CdashigDomainSerializer implements PrimitiveSerializer<CdashigDomain> {
  @override
  final Iterable<Type> types = const [CdashigDomain, _$CdashigDomain];

  @override
  final String wireName = r'CdashigDomain';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigDomain object, {
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
        specifiedType: const FullType(CdashigDomainLinks),
      );
    }
    if (object.fields != null) {
      yield r'fields';
      yield serializers.serialize(
        object.fields,
        specifiedType: const FullType(BuiltList, [FullType(CdashigDomainField)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigDomain object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigDomainBuilder result,
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
            specifiedType: const FullType(CdashigDomainLinks),
          ) as CdashigDomainLinks;
          result.links.replace(valueDes);
          break;
        case r'fields':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigDomainField)]),
          ) as BuiltList<CdashigDomainField>;
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
  CdashigDomain deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigDomainBuilder();
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

