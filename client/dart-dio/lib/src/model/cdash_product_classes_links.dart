//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/cdash_product_classes_ref.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/cdash_product_ref.dart';
import 'package:openapi/src/model/cdash_class_ref_element.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cdash_product_classes_links.g.dart';

/// CdashProductClassesLinks
///
/// Properties:
/// * [self] 
/// * [parentProduct] 
/// * [classes] 
@BuiltValue()
abstract class CdashProductClassesLinks implements Built<CdashProductClassesLinks, CdashProductClassesLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  CdashProductClassesRef? get self;

  @BuiltValueField(wireName: r'parentProduct')
  CdashProductRef? get parentProduct;

  @BuiltValueField(wireName: r'classes')
  BuiltList<CdashClassRefElement>? get classes;

  CdashProductClassesLinks._();

  factory CdashProductClassesLinks([void updates(CdashProductClassesLinksBuilder b)]) = _$CdashProductClassesLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CdashProductClassesLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CdashProductClassesLinks> get serializer => _$CdashProductClassesLinksSerializer();
}

class _$CdashProductClassesLinksSerializer implements PrimitiveSerializer<CdashProductClassesLinks> {
  @override
  final Iterable<Type> types = const [CdashProductClassesLinks, _$CdashProductClassesLinks];

  @override
  final String wireName = r'CdashProductClassesLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CdashProductClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(CdashProductClassesRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(CdashProductRef),
      );
    }
    if (object.classes != null) {
      yield r'classes';
      yield serializers.serialize(
        object.classes,
        specifiedType: const FullType(BuiltList, [FullType(CdashClassRefElement)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CdashProductClassesLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CdashProductClassesLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductClassesRef),
          ) as CdashProductClassesRef;
          result.self.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CdashProductRef),
          ) as CdashProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'classes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CdashClassRefElement)]),
          ) as BuiltList<CdashClassRefElement>;
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
  CdashProductClassesLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CdashProductClassesLinksBuilder();
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

