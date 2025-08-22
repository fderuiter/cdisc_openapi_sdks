//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdashig_product_ref.dart';
import 'package:openapi/src/model/cdashig_product_classes_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdashig_class_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdashig_product_classes_links.g.dart';

/// CdashigProductClassesLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [classes] 
@BuiltValue()
abstract class CdashigProductClassesLinks implements Built<CdashigProductClassesLinks, CdashigProductClassesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashigProductClassesRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'classes')
  BuiltList<CdashigClassRefElement>? get classes;

  CdashigProductClassesLinks._();

  factory CdashigProductClassesLinks([void updates(CdashigProductClassesLinksBuilder b)]) = _$CdashigProductClassesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashigProductClassesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashigProductClassesLinks> get serializer => _$CdashigProductClassesLinksSerializer();
}

class _$CdashigProductClassesLinksSerializer implements PrimitiveSerializer<CdashigProductClassesLinks> {
  @override
  final Iterable<Type> types = const [CdashigProductClassesLinks, _$CdashigProductClassesLinks];

  @override
  final String wireName = r'CdashigProductClassesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashigProductClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashigProductClassesRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashigProductRef),
      );
    }
    if (object.classes != null) {
      yield r'classes';
      yield serializers.serialize(
        object.classes,
        specifiedType: const FullType(BuiltList, [FullType(CdashigClassRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashigProductClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashigProductClassesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductClassesRef),
          ) as CdashigProductClassesRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashigProductRef),
          ) as CdashigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'classes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashigClassRefElement)]),
          ) as BuiltList<CdashigClassRefElement>;
          result.classes.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CdashigProductClassesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashigProductClassesLinksBuilder();
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

