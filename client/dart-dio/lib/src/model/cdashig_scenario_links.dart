//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdashig_class_ref.dart';
import 'package:openapi/src/model/cdashig_scenario_ref.dart';
import 'package:openapi/src/model/cdashig_domain_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_scenario_links.g.dart';

/// CdashigScenarioLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [parentDomain] 
/// * [priorVersion] 
@BuiltValue()
abstract class CdashigScenarioLinks implements Built<CdashigScenarioLinks, CdashigScenarioLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigScenarioRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashigClassRef? get parentClass;

  @BuiltValueField(wireName: r'parentDomain')
  CdashigDomainRef? get parentDomain;

  @BuiltValueField(wireName: r'priorVersion')
  CdashigScenarioRef? get priorVersion;

  CdashigScenarioLinks._();

  factory CdashigScenarioLinks([void updates(CdashigScenarioLinksBuilder b)]) = _$CdashigScenarioLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigScenarioLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigScenarioLinks> get serializer => _$CdashigScenarioLinksSerializer();
}

class _$CdashigScenarioLinksSerializer implements PrimitiveSerializer<CdashigScenarioLinks> {
  @override
  final Iterable<Type> types = const [CdashigScenarioLinks, _$CdashigScenarioLinks];

  @override
  final String wireName = r'CdashigScenarioLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigScenarioLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigScenarioRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashigProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(CdashigClassRef),
      );
    }
    if (object.parentDomain != null) {
      yield r'parentDomain';
      yield serializers.serialize(
        object.parentDomain,
        specifiedType: const FullType(CdashigDomainRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashigScenarioRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigScenarioLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigScenarioLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioRef),
          ) as CdashigScenarioRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigClassRef),
          ) as CdashigClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'parentDomain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainRef),
          ) as CdashigDomainRef;
          result.parentDomain.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigScenarioRef),
          ) as CdashigScenarioRef;
          result.priorVersion.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigScenarioLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigScenarioLinksBuilder();
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

