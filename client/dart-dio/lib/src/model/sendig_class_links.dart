//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/sendig_product_ref.dart';
import 'package:openapi/src/model/sdtm_class_ref.dart';
import 'package:openapi/src/model/sendig_class_ref_subclass.dart';
import 'package:built_collection/built_collection.dart';
import 'package:openapi/src/model/sendig_class_ref.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sendig_class_links.g.dart';

/// SendigClassLinks
///
/// Properties:
/// * [self] 
/// * [modelClass] 
/// * [parentProduct] 
/// * [parentClass] 
/// * [subclasses] 
/// * [priorVersion] 
@BuiltValue()
abstract class SendigClassLinks implements Built<SendigClassLinks, SendigClassLinksBuilder> {
  @BuiltValueField(wireName: r'self')
  SendigClassRef? get self;

  @BuiltValueField(wireName: r'modelClass')
  SdtmClassRef? get modelClass;

  @BuiltValueField(wireName: r'parentProduct')
  SendigProductRef? get parentProduct;

  @BuiltValueField(wireName: r'parentClass')
  SendigClassRef? get parentClass;

  @BuiltValueField(wireName: r'subclasses')
  BuiltList<SendigClassRefSubclass>? get subclasses;

  @BuiltValueField(wireName: r'priorVersion')
  SendigClassRef? get priorVersion;

  SendigClassLinks._();

  factory SendigClassLinks([void updates(SendigClassLinksBuilder b)]) = _$SendigClassLinks;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SendigClassLinksBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SendigClassLinks> get serializer => _$SendigClassLinksSerializer();
}

class _$SendigClassLinksSerializer implements PrimitiveSerializer<SendigClassLinks> {
  @override
  final Iterable<Type> types = const [SendigClassLinks, _$SendigClassLinks];

  @override
  final String wireName = r'SendigClassLinks';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SendigClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(SendigClassRef),
      );
    }
    if (object.modelClass != null) {
      yield r'modelClass';
      yield serializers.serialize(
        object.modelClass,
        specifiedType: const FullType(SdtmClassRef),
      );
    }
    if (object.parentProduct != null) {
      yield r'parentProduct';
      yield serializers.serialize(
        object.parentProduct,
        specifiedType: const FullType(SendigProductRef),
      );
    }
    if (object.parentClass != null) {
      yield r'parentClass';
      yield serializers.serialize(
        object.parentClass,
        specifiedType: const FullType(SendigClassRef),
      );
    }
    if (object.subclasses != null) {
      yield r'subclasses';
      yield serializers.serialize(
        object.subclasses,
        specifiedType: const FullType(BuiltList, [FullType(SendigClassRefSubclass)]),
      );
    }
    if (object.priorVersion != null) {
      yield r'priorVersion';
      yield serializers.serialize(
        object.priorVersion,
        specifiedType: const FullType(SendigClassRef),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SendigClassLinks object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SendigClassLinksBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassRef),
          ) as SendigClassRef;
          result.self.replace(valueDes);
          break;
        case r'modelClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SdtmClassRef),
          ) as SdtmClassRef;
          result.modelClass.replace(valueDes);
          break;
        case r'parentProduct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigProductRef),
          ) as SendigProductRef;
          result.parentProduct.replace(valueDes);
          break;
        case r'parentClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassRef),
          ) as SendigClassRef;
          result.parentClass.replace(valueDes);
          break;
        case r'subclasses':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SendigClassRefSubclass)]),
          ) as BuiltList<SendigClassRefSubclass>;
          result.subclasses.replace(valueDes);
          break;
        case r'priorVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SendigClassRef),
          ) as SendigClassRef;
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
  SendigClassLinks deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SendigClassLinksBuilder();
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

