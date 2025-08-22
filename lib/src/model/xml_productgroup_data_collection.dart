//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/productgroup_data_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_productgroup_data_collection.g.dart';

/// XmlProductgroupDataCollection
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlProductgroupDataCollection implements Built<XmlProductgroupDataCollection, XmlProductgroupDataCollectionBuilder> {
  @BuiltValueField(wireName: r'self')
  ProductgroupDataCollection? get self;

  XmlProductgroupDataCollection._();

  factory XmlProductgroupDataCollection([void updates(XmlProductgroupDataCollectionBuilder b)]) = _$XmlProductgroupDataCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlProductgroupDataCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlProductgroupDataCollection> get serializer => _$XmlProductgroupDataCollectionSerializer();
}

class _$XmlProductgroupDataCollectionSerializer implements PrimitiveSerializer<XmlProductgroupDataCollection> {
  @override
  final Iterable<Type> types = const [XmlProductgroupDataCollection, _$XmlProductgroupDataCollection];

  @override
  final String wireName = r'XmlProductgroupDataCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlProductgroupDataCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(ProductgroupDataCollection),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlProductgroupDataCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlProductgroupDataCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ProductgroupDataCollection),
          ) as ProductgroupDataCollection;
          result.self.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  XmlProductgroupDataCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlProductgroupDataCollectionBuilder();
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

