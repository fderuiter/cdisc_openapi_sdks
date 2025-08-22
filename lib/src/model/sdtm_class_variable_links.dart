//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/root_sdtm_class_variable_ref.dart';
import 'package:openapi/src/model/sdtm_class_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:openapi/src/model/sdtm_class_variable_ref_qualifies.dart';
import 'package:openapi/src/model/sdtm_class_variable_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_class_variable_links.g.dart';

/// SdtmClassVariableLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [qualifiesVariables] 
/// * [rootItem] 
/// * [priorVersion] 
@BuiltValue()
abstract class SdtmClassVariableLinks implements Built<SdtmClassVariableLinks, SdtmClassVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClassVariableRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SdtmClassRef? get parentClass;

  @BuiltValueField(wireName: r'qualifiesVariables')
  BuiltList<SdtmClassVariableRefQualifies>? get qualifiesVariables;

  @BuiltValueField(wireName: r'rootItem')
  RootSdtmClassVariableRef? get rootItem;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmClassVariableRef? get priorVersion;

  SdtmClassVariableLinks._();

  factory SdtmClassVariableLinks([void updates(SdtmClassVariableLinksBuilder b)]) = _$SdtmClassVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmClassVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmClassVariableLinks> get serializer => _$SdtmClassVariableLinksSerializer();
}

class _$SdtmClassVariableLinksSerializer implements PrimitiveSerializer<SdtmClassVariableLinks> {
  @override
  final Iterable<Type> types = const [SdtmClassVariableLinks, _$SdtmClassVariableLinks];

  @override
  final String wireName = r'SdtmClassVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmClassVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClassVariableRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(SdtmClassRef),
      );
    }
    if (object.qualifiesVariables != null) {
      yield r'qualifiesVariables';
      yield serializers.serialize(
        object.qualifiesVariables,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefQualifies)]),
      );
    }
    if (object.rootItem != null) {
      yield r'rootItem';
      yield serializers.serialize(
        object.rootItem,
        specifiedType: const FullType(RootSdtmClassVariableRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmClassVariableRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmClassVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmClassVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariableRef),
          ) as SdtmClassVariableRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassRef),
          ) as SdtmClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'qualifiesVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefQualifies)]),
          ) as BuiltList<SdtmClassVariableRefQualifies>;
          result.qualifiesVariables.replace(valueDes);
          break;
        case r'rootItem':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootSdtmClassVariableRef),
          ) as RootSdtmClassVariableRef;
          result.rootItem.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariableRef),
          ) as SdtmClassVariableRef;
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
  SdtmClassVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmClassVariableLinksBuilder();
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

