//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:openapi/src/model/qrs_items.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'xml_qrs_items.g.dart';

/// XmlQrsItems
///
/// Properties:
/// * [self] 
@BuiltValue()
abstract class XmlQrsItems implements Built<XmlQrsItems, XmlQrsItemsBuilder> {
  @BuiltValueField(wireName: r'self')
  QrsItems? get self;

  XmlQrsItems._();

  factory XmlQrsItems([void updates(XmlQrsItemsBuilder b)]) = _$XmlQrsItems;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(XmlQrsItemsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<XmlQrsItems> get serializer => _$XmlQrsItemsSerializer();
}

class _$XmlQrsItemsSerializer implements PrimitiveSerializer<XmlQrsItems> {
  @override
  final Iterable<Type> types = const [XmlQrsItems, _$XmlQrsItems];

  @override
  final String wireName = r'XmlQrsItems';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    XmlQrsItems object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.self != null) {
      yield r'self';
      yield serializers.serialize(
        object.self,
        specifiedType: const FullType(QrsItems),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    XmlQrsItems object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required XmlQrsItemsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'self':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(QrsItems),
          ) as QrsItems;
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
  XmlQrsItems deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = XmlQrsItemsBuilder();
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

