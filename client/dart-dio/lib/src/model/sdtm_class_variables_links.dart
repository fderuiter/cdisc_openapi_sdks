//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sdtm_product_ref.dart';
import 'package:openapi/src/model/sdtm_class_variables_ref.dart';
import 'package:openapi/src/model/sdtm_class_variable_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sdtm_class_variables_links.g.dart';

/// SdtmClassVariablesLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [priorVersion] 
/// * [classVariables] 
@BuiltValue()
abstract class SdtmClassVariablesLinks implements Built<SdtmClassVariablesLinks, SdtmClassVariablesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SdtmClassVariablesRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  SdtmProductRef? get parentProduct;

  @BuiltValueField(wireName: r'priorVersion')
  SdtmClassVariablesRef? get priorVersion;

  @BuiltValueField(wireName: r'classVariables')
  BuiltList<SdtmClassVariableRefElement>? get classVariables;

  SdtmClassVariablesLinks._();

  factory SdtmClassVariablesLinks([void updates(SdtmClassVariablesLinksBuilder b)]) = _$SdtmClassVariablesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SdtmClassVariablesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SdtmClassVariablesLinks> get serializer => _$SdtmClassVariablesLinksSerializer();
}

class _$SdtmClassVariablesLinksSerializer implements PrimitiveSerializer<SdtmClassVariablesLinks> {
  @override
  final Iterable<Type> types = const [SdtmClassVariablesLinks, _$SdtmClassVariablesLinks];

  @override
  final String wireName = r'SdtmClassVariablesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SdtmClassVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SdtmClassVariablesRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SdtmProductRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SdtmClassVariablesRef),
      );
    }
    if (object.classVariables != null) {
      yield r'classVariables';
      yield serializers.serialize(
        object.classVariables,
        specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SdtmClassVariablesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SdtmClassVariablesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariablesRef),
          ) as SdtmClassVariablesRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmProductRef),
          ) as SdtmProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassVariablesRef),
          ) as SdtmClassVariablesRef;
          result.priorVersion.replace(valueDes);
          break;
        case r'classVariables':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SdtmClassVariableRefElement)]),
          ) as BuiltList<SdtmClassVariableRefElement>;
          result.classVariables.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SdtmClassVariablesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SdtmClassVariablesLinksBuilder();
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

