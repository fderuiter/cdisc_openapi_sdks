//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/adam_variable_ref.dart';
import 'package:openapi/src/model/adam_product_ref.dart';
import 'package:openapi/src/model/root_ct_codelist_ref.dart';
import 'package:openapi/src/model/adam_datastructure_ref.dart';
import 'package:openapi/src/model/adam_varset_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'adam_variable_links.g.dart';

/// AdamVariableLinks
///
/// Properties:
/// * [self] 
/// * [codelist] 
/// * [parentProduct] 
/// * [parentDatastructure] 
/// * [parentVariableSet] 
/// * [priorVersion] 
@BuiltValue()
abstract class AdamVariableLinks implements Built<AdamVariableLinks, AdamVariableLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  AdamVariableRef? get self;

  @BuiltValueField(wireName: r'codelist')
  RootCtCodelistRef? get codelist;

  @BuiltValueField(wireName: r'parentProduct')
  AdamProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentDatastructure')
  AdamDatastructureRef? get parentDatastructure;

  @BuiltValueField(wireName: r'parentVariableSet')
  AdamVarsetRef? get parentVariableSet;

  @BuiltValueField(wireName: r'priorVersion')
  AdamVariableRef? get priorVersion;

  AdamVariableLinks._();

  factory AdamVariableLinks([void updates(AdamVariableLinksBuilder b)]) = _$AdamVariableLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdamVariableLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdamVariableLinks> get serializer => _$AdamVariableLinksSerializer();
}

class _$AdamVariableLinksSerializer implements PrimitiveSerializer<AdamVariableLinks> {
  @override
  final Iterable<Type> types = const [AdamVariableLinks, _$AdamVariableLinks];

  @override
  final String wireName = r'AdamVariableLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdamVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(AdamVariableRef),
      );
    }
    if (object.codelist != null) {
      yield r'codelist';
      yield serializers.serialize(
        object.codelist,
        specifiedType: const FullType(RootCtCodelistRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(AdamProductRef),
      );
    }
    if (object.parentDatastructure != null) {
      yield r'parentDatastructure';
      yield serializers.serialize(
        object.parentDatastructure,
        specifiedType: const FullType(AdamDatastructureRef),
      );
    }
    if (object.parentVariableSet != null) {
      yield r'parentVariableSet';
      yield serializers.serialize(
        object.parentVariableSet,
        specifiedType: const FullType(AdamVarsetRef),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(AdamVariableRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AdamVariableLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdamVariableLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamVariableRef),
          ) as AdamVariableRef;
          result.self.replace(valueDes);
          break;
        case r'codelist':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RootCtCodelistRef),
          ) as RootCtCodelistRef;
          result.codelist.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamProductRef),
          ) as AdamProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentDatastructure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamDatastructureRef),
          ) as AdamDatastructureRef;
          result.parentDatastructure.replace(valueDes);
          break;
        case r'parentVariableSet':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamVarsetRef),
          ) as AdamVarsetRef;
          result.parentVariableSet.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AdamVariableRef),
          ) as AdamVariableRef;
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
  AdamVariableLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdamVariableLinksBuilder();
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

