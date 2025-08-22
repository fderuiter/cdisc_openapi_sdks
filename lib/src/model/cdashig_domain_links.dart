//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdashig_class_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_scenario_ref_element.dart';
import 'package:openapi/src/model/cdashig_domain_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_domain_links.g.dart';

/// CdashigDomainLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [priorVersion] 
/// * [scenarios] 
@BuiltValue()
abstract class CdashigDomainLinks implements Built<CdashigDomainLinks, CdashigDomainLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigDomainRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  CdashigClassRef? get parentClass;

  @BuiltValueField(wireName: r'priorVersion')
  CdashigDomainRef? get priorVersion;

  @BuiltValueField(wireName: r'scenarios')
  BuiltList<CdashigScenarioRefElement>? get scenarios;

  CdashigDomainLinks._();

  factory CdashigDomainLinks([void updates(CdashigDomainLinksBuilder b)]) = _$CdashigDomainLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigDomainLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigDomainLinks> get serializer => _$CdashigDomainLinksSerializer();
}

class _$CdashigDomainLinksSerializer implements PrimitiveSerializer<CdashigDomainLinks> {
  @override
  final Iterable<Type> types = const [CdashigDomainLinks, _$CdashigDomainLinks];

  @override
  final String wireName = r'CdashigDomainLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigDomainLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigDomainRef),
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
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(CdashigDomainRef),
      );
    }
    if (object.scenarios != null) {
      yield r'scenarios';
      yield serializers.serialize(
        object.scenarios,
        specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigDomainLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigDomainLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainRef),
          ) as CdashigDomainRef;
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
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigDomainRef),
          ) as CdashigDomainRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'scenarios':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigScenarioRefElement)]),
          ) as BuiltList<CdashigScenarioRefElement>;
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
  CdashigDomainLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigDomainLinksBuilder();
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

