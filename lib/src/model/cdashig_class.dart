//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_domain.dart';
import 'package:openapi/src/model/cdashig_class_links.dart';
import 'package:openapi/src/model/cdashig_scenario.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_class.g.dart';

/// CdashigClass
///
/// Properties:
/// * [ordinal] 
/// * [name] 
/// * [label] 
/// * [description] 
/// * [links] 
/// * [domains] 
/// * [scenarios] 
@BuiltValue()
abstract class CdashigClass implements Built<CdashigClass, CdashigClassBuilder> {
  @BuiltValueField(wireName: r'ordinal')
  String? get ordinal;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'label')
  String? get label;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'_links')
  CdashigClassLinks? get links;

  @BuiltValueField(wireName: r'domains')
  BuiltList<CdashigDomain>? get domains;

  @BuiltValueField(wireName: r'scenarios')
  BuiltList<CdashigScenario>? get scenarios;

  CdashigClass._();

  factory CdashigClass([void updates(CdashigClassBuilder b)]) = _$CdashigClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigClass> get serializer => _$CdashigClassSerializer();
}

class _$CdashigClassSerializer implements PrimitiveSerializer<CdashigClass> {
  @override
  final Iterable<Type> types = const [CdashigClass, _$CdashigClass];

  @override
  final String wireName = r'CdashigClass';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigClass object, {
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
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.links != null) {
      yield r'_links';
      yield serializers.serialize(
        object.links,
        specifiedType: const FullType(CdashigClassLinks),
      );
    }
    if (object.domains != null) {
      yield r'domains';
      yield serializers.serialize(
        object.domains,
        specifiedType: const FullType(BuiltList, [FullType(CdashigDomain)]),
      );
    }
    if (object.scenarios != null) {
      yield r'scenarios';
      yield serializers.serialize(
        object.scenarios,
        specifiedType: const FullType(BuiltList, [FullType(CdashigScenario)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigClass object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigClassBuilder result,
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
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassLinks),
          ) as CdashigClassLinks;
          result.links.replace(valueDes);
          break;
        case r'domains':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigDomain)]),
          ) as BuiltList<CdashigDomain>;
          result.domains.replace(valueDes);
          break;
        case r'scenarios':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigScenario)]),
          ) as BuiltList<CdashigScenario>;
          result.scenarios.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigClass deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigClassBuilder();
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

